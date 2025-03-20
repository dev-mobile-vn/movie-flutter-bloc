import 'package:movie/core/data/model/movie_model.dart';
import 'package:movie/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliver_tools/sliver_tools.dart';
import '../../../core/bloc/page_state.dart';
import '../../../core/common/translations/l10n.dart';
import '../../../core/common/widgets/image_widget.dart';
import '../../../core/common/widgets/loading.dart';
import '../../../core/common/widgets/svg_widget.dart';
import '../../../core/config/network_constants.dart';
import '../../../core/cubit/app_cubit.dart';
import 'bloc/movie_detail_bloc_cubit.dart';
import 'widgets/content_view.dart';
import 'widgets/reviews_view.dart';
import 'widgets/trailers_view.dart';
import 'widgets/similar_movies_view.dart';

class MovieDetailScreen extends StatefulWidget {
  final String id;

  const MovieDetailScreen({super.key, required this.id});

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late String id;
  MovieDetailBlocCubit cubit = getIt.get<MovieDetailBlocCubit>();

  @override
  void initState() {
    super.initState();
    id = widget.id;
    _tabController = TabController(
        length: 3,
        vsync: this,
        animationDuration: const Duration(milliseconds: 50));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  double _calculateOffset(double offset) {
    if (offset < 0) return 0;
    if (offset > 100) return 1;
    return offset / 100;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          getIt<AppCubit>().state.isDarkMode ? Colors.black : Colors.white,
      body: BlocProvider<MovieDetailBlocCubit>(
        create: (context) => cubit
          ..getDetailMovie(id)
          ..getTrailers(id),
        child: BlocConsumer<MovieDetailBlocCubit, MovieDetailState>(
          buildWhen: (previous, current) => previous.movie != current.movie,
          listener: (context, state) {},
          builder: (context, state) {
            if (state.status == PageState.loading) {
              return const Loading();
            }
            MovieModel? movie = state.movie;
            return SafeArea(
              top: false,
              child: NestedScrollView(
                  physics: const ClampingScrollPhysics(),
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverStack(children: [
                        SliverToBoxAdapter(
                          child: Stack(
                            children: [
                              AspectRatio(
                                aspectRatio: 428 / 320,
                                child: CacheImageWidget(
                                  imageUrl: '$baseUrlImage${movie?.posterPath}',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SliverLayoutBuilder(builder: (_, size) {
                          return SliverAppBar(
                              pinned: true,
                              elevation: 0,
                              leadingWidth: 46,
                              leading: InkWell(
                                onTap: () => Navigator.pop(context),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: size.scrollOffset > 100
                                      ? getIt<AppCubit>().state.isDarkMode
                                      ? Colors.white
                                      : Colors.black
                                      : Colors.white,
                                ),
                              ),
                              toolbarHeight: 50,
                              backgroundColor: Color.lerp(
                                  Colors.transparent,
                                  getIt<AppCubit>().state.isDarkMode
                                      ? null
                                      : Colors.white,
                                  _calculateOffset(size.scrollOffset)));
                        })
                      ]),
                      SliverToBoxAdapter(
                        child: ContentView(
                          movie: movie,
                          cubit: cubit,
                        ),
                      ),
                      SliverPinnedHeader(
                          child: Material(
                        color: getIt<AppCubit>().state.isDarkMode
                            ? Colors.black
                            : Colors.white,
                        child: Stack(
                          children: [
                            const Positioned(
                                left: 0,
                                bottom: -8,
                                right: 0,
                                child: Divider(
                                  thickness: 2,
                                )),
                            TabBar(
                                onTap: (index) {
                                  switch (index) {
                                    case 0:
                                      cubit.getTrailers(id);
                                      break;
                                    case 1:
                                      cubit.getListMovieSimilar(id);
                                      break;
                                    case 2:
                                      cubit.getReviews(id);
                                      break;
                                  }
                                },
                                isScrollable:
                                    MediaQuery.sizeOf(context).width < 600
                                        ? true
                                        : false,
                                tabAlignment:
                                    MediaQuery.sizeOf(context).width < 600
                                        ? TabAlignment.center
                                        : null,
                                controller: _tabController,
                                tabs: [
                                  Tab(
                                    child: Text(S.of(context).tab_trailers),
                                  ),
                                  Tab(
                                    child:
                                        Text(S.of(context).tab_similar_movies),
                                  ),
                                  Tab(
                                    child: Text(S.of(context).tab_comments),
                                  ),
                                ])
                          ],
                        ),
                      ))
                    ];
                  },
                  body: TabBarView(
                      controller: _tabController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        TrailersView(
                          cubit: cubit,
                        ),
                        SimilarMoviesView(id: id, cubit: cubit),
                        ReviewsView(
                          id: id,
                          cubit: cubit,
                        ),
                      ])),
            );
          },
        ),
      ),
    );
  }
}
