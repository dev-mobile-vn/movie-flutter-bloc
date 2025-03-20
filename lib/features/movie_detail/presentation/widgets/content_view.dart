import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/common/constant/routers.dart';
import '../../../../core/common/translations/l10n.dart';
import '../../../../core/common/utils/times_utils.dart';
import '../../../../core/common/widgets/svg_widget.dart';
import '../../../../core/cubit/app_cubit.dart';
import '../../../../core/data/model/movie_model.dart';
import '../../../../di/dependency_injection.dart';
import '../../../watch_video/watch_video_screen.dart';
import '../bloc/movie_detail_bloc_cubit.dart';

class ContentView extends StatelessWidget {
  final MovieDetailBlocCubit cubit;
  final MovieModel? movie;

  const ContentView({super.key, this.movie, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            spacing: 16,
            children: [
              Expanded(
                child: Text(
                  movie?.title ?? "",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 20,
                        overflow: TextOverflow.ellipsis,
                      ),
                  maxLines: 1,
                ),
              ),
              InkWell(
                onTap: () => cubit.addMyMovie(movie!),
                child: BlocBuilder<MovieDetailBlocCubit, MovieDetailState>(
                  builder: (context, state) {
                    return SvgWidget(
                      ic: state.isBookMark
                          ? 'assets/icons/ic_book_mark.svg'
                          : 'assets/icons/ic_my_list.svg',
                      color: getIt<AppCubit>().state.isDarkMode
                          ? Colors.white
                          : null,
                    );
                  },
                ),
              ),
              SvgWidget(
                ic: 'assets/icons/ic_share.svg',
                color: getIt<AppCubit>().state.isDarkMode ? Colors.white : null,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          child: Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              const SvgWidget(ic: 'assets/icons/ic_star.svg'),
              const SizedBox(
                width: 8,
              ),
              Text(
                '${movie?.voteAverage?.toStringAsFixed(1)}',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: getIt<AppCubit>().state.isDarkMode
                        ? Colors.white
                        : Theme.of(context).primaryColor),
              ),
              const SizedBox(
                width: 4,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: getIt<AppCubit>().state.isDarkMode
                    ? Colors.white
                    : Theme.of(context).primaryColor,
                size: 14,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(movie?.releaseDate != null
                  ? '${formatDateTime(movie!.releaseDate!)}'
                  : ''),
              const SizedBox(
                width: 16,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                        color: getIt<AppCubit>().state.isDarkMode
                            ? Colors.white
                            : Theme.of(context).primaryColor,
                        width: 1)),
                child: Text(
                  '13+',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14,
                      color: getIt<AppCubit>().state.isDarkMode
                          ? Colors.white
                          : Theme.of(context).primaryColor),
                ),
              ),
              Row(
                children: movie!.originCountry!
                    .map((item) => Container(
                          margin: const EdgeInsets.only(left: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: getIt<AppCubit>().state.isDarkMode
                                      ? Colors.white
                                      : Theme.of(context).primaryColor,
                                  width: 1)),
                          child: Text(
                            item,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 14,
                                    color: getIt<AppCubit>().state.isDarkMode
                                        ? Colors.white
                                        : Theme.of(context).primaryColor),
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.red,
                    minimumSize:
                        Size(MediaQuery.sizeOf(context).width * 0.5 - 24, 36)),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    watchVideoRoute,
                    arguments: WatchVideoArguments(
                        index: 0,
                        data: cubit.state.trailersMovie,
                        isFirstPlay: true),
                  );
                },
                icon: SvgPicture.asset('assets/icons/ic_play.svg'),
                label: Text(
                  S.of(context).btn_play,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.white),
                )),
            const SizedBox(
              width: 16,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    minimumSize:
                        Size(MediaQuery.sizeOf(context).width * 0.5 - 24, 36),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: const BorderSide(color: Colors.red, width: 2))),
                onPressed: () {},
                icon: const SvgWidget(
                  ic: 'assets/icons/ic_red_download.svg',
                  color: Colors.red,
                ),
                label: Text(
                  S.of(context).btn_download,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.red),
                )),
            const SizedBox(
              width: 16,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
              'Genre: ${movie?.genres?.map((it) => it.name).join(", ")}',
              style: Theme.of(context).textTheme.bodyMedium!),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            movie?.overview ?? "",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        )
      ],
    );
  }
}
