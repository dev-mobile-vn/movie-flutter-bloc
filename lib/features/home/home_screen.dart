import 'package:movie/core/bloc/page_command.dart';
import 'package:movie/core/config/network_constants.dart';
import 'package:movie/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/features/home/view/banner_view.dart';
import 'package:movie/features/home/view/main_view.dart';

import '../../../../core/bloc/page_state.dart';
import '../../../../core/common/widgets/loading.dart';
import 'bloc/home_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AutomaticKeepAliveClientMixin {
  final cubit = getIt.get<HomeCubit>();

  @override
  void initState() {
    super.initState();
    cubit
      ..getMovieDetail()
      ..getMovies(apiNowPlaying)
      ..getMovies(apiTopRate)
      ..getMovies(apiUpcoming)
      ..getMovies(apiPopular);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      top: false,
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          cubit.onClearPageCommand();
          if (state.pageCommand is PageCommand) {
            if (state.pageCommand is PageCommandNavigatorPage) {
              onNavigate(state.pageCommand as PageCommandNavigatorPage);
            }
          }
        },
        builder: (context, state) {
          if (state.status == PageState.loading) {
            return const Loading();
          } else if (state.status == PageState.success) {
            return RefreshIndicator(
              onRefresh: () async {
                cubit
                  ..getMovieDetail()
                  ..getMovies(apiNowPlaying)
                  ..getMovies(apiTopRate)
                  ..getMovies(apiUpcoming)
                  ..getMovies(apiPopular);
              },
              child: SingleChildScrollView(
                key: const PageStorageKey('HomeStorageKey'),
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(bottom: 24),
                child: Column(
                  children: [
                    (state.movie != null)
                        ? BannerView(
                            movie: state.movie!,
                            onPlayMovie: () => cubit.getTrailers(),
                          )
                        : const SizedBox(),
                    MainView(
                      nowPlayMovies: state.nowPlayMovies,
                      topMovies: state.topRateMovies,
                      upcomingMovies: state.upComingMovies,
                      popularMovies: state.popularMovies,
                    ),
                  ],
                ),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  void onNavigate(PageCommandNavigatorPage pageCommand) {
    Navigator.pushNamed(
      context,
      pageCommand.page!,
      arguments: pageCommand.argument,
    );
  }
}
