import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/core/common/extensions/text_style_extension.dart';
import 'package:movie/features/movie_detail/data/model/review_model.dart';

import '../../../../core/bloc/page_state.dart';
import '../../../../core/common/constant/routers.dart';
import '../../../../core/common/widgets/svg_widget.dart';
import '../../../../core/config/network_constants.dart';
import '../../../../core/cubit/app_cubit.dart';
import '../../../../di/dependency_injection.dart';
import '../bloc/movie_detail_bloc_cubit.dart';

class ReviewsView extends StatelessWidget {
  final MovieDetailBlocCubit cubit;
  final String id;
  const ReviewsView({super.key, required this.id, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailBlocCubit, MovieDetailState>(
      bloc: cubit,
      builder: (context, state) {
        if (state.status == PageState.success) {
          List<ReviewModel> reviews = state.reviews?.reviews ?? [];
          return Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              if (state.reviews?.totalResults != null)
                Row(
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      '${state.reviews?.totalResults} Comments',
                      style: context.titleMedium.copyWith(
                          color: getIt<AppCubit>().state.isDarkMode
                              ? Colors.white
                              : Colors.black),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                          context, postCommentRoute,
                          arguments: id),
                      child: Text(
                        'See all',
                        style: context.bodyMedium.copyWith(
                            color: getIt<AppCubit>().state.isDarkMode
                                ? Colors.white
                                : Theme.of(context).primaryColor),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    ReviewModel item = reviews[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 28, // Image radius
                            backgroundImage: NetworkImage(
                                '$baseUrlAvatar${item.authorDetail.avatarPath}'),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item.author,
                                    style: context.labelMedium.copyWith(
                                        color:
                                            getIt<AppCubit>().state.isDarkMode
                                                ? Colors.white
                                                : Colors.black)),
                                Text(
                                  item.content,
                                  maxLines: 2,
                                  style: context.bodyMedium.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      color: getIt<AppCubit>().state.isDarkMode
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    SvgWidget(
                                      ic: index % 2 == 0
                                          ? "assets/icons/ic_love.svg"
                                          : 'assets/icons/ic_heart.svg',
                                      color: getIt<AppCubit>().state.isDarkMode
                                          ? Colors.white
                                          : Theme.of(context).primaryColor,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '200',
                                      style: context.bodySmall.copyWith(
                                          fontSize: 12,
                                          color:
                                              getIt<AppCubit>().state.isDarkMode
                                                  ? Colors.white
                                                  : Colors.grey),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      '2 days ago',
                                      style: context.bodySmall.copyWith(
                                          fontSize: 12,
                                          color:
                                              getIt<AppCubit>().state.isDarkMode
                                                  ? Colors.white
                                                  : Colors.grey),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Reply',
                                      style: context.bodySmall.copyWith(
                                          fontSize: 12,
                                          color:
                                              getIt<AppCubit>().state.isDarkMode
                                                  ? Colors.white
                                                  : Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: reviews.length,
                ),
              ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
