import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/core/common/widgets/svg_widget.dart';
import 'package:movie/core/cubit/app_cubit.dart';
import 'package:movie/di/dependency_injection.dart';
import '../../../../../core/bloc/page_state.dart';
import '../../../../../core/common/translations/l10n.dart';
import '../../../../../core/common/widgets/item_movie.dart';
import '../../../../../core/common/widgets/loading.dart';
import 'bloc/explore_bloc.dart';
import 'widgets/search_movie.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Column(
        children: [
          SearchMovie(),
          Expanded(
            child: BlocConsumer<ExploreBloc, ExploreState>(
              bloc: getIt<ExploreBloc>()..add(ExploreEvent.fetchData()),
              listener: (context, state) {},
              builder: (context, state) {
                if (state.status == PageState.loading) {
                  return const Align(child: Loading());
                } else if (state.status == PageState.success) {
                  if (state.movies.isEmpty && state.status != PageState.empty) {
                    return Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgWidget(ic: 'assets/icons/ic_not_found_movies.svg'),
                          Padding(
                            padding: const EdgeInsets.only(top: 24),
                            child: Text(
                              S.of(context).txt_not_found,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color: getIt<AppCubit>().state.isDarkMode
                                        ? Colors.white
                                        : Theme.of(context).primaryColor,
                                    fontSize: 24,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 16),
                            child: Text(
                              textAlign: TextAlign.center,
                              S.of(context).txt_des_not_found_movie,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: getIt<AppCubit>().state.isDarkMode
                                        ? Colors.white
                                        : Color(0xff424242),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  return GridView.builder(
                    key: const PageStorageKey('ExploreStorageKey'),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3 / 4,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return ItemMovie(item: state.movies[index]);
                    },
                    itemCount: state.movies.length,
                  );
                }
                return const SizedBox();
              },
            ),
          ),
        ],
      ),
    );
  }
}
