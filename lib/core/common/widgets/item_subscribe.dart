import 'package:flutter/material.dart';
import '../../../core/common/resource/icons.dart';
import '../../../core/common/translations/l10n.dart';
import '../../../core/common/widgets/svg_widget.dart';
import '../../../di/dependency_injection.dart';
import '../../cubit/app_cubit.dart';

class ItemSubscribe extends StatelessWidget {
  final String price;
  final String time;
  final VoidCallback? onPressed;

  const ItemSubscribe({
    super.key,
    required this.price,
    required this.time,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed?.call(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            border: Border.all(
                color: Theme.of(context).colorScheme.primary, width: 1)),
        child: Column(
          children: [
            SvgWidget(ic: icPremium),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '\$$price ',
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: getIt<AppCubit>().state.isDarkMode
                            ? Colors.white
                            : Color(0xff000000),
                      ),
                ),
                TextSpan(
                  text: '/$time',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: getIt<AppCubit>().state.isDarkMode
                          ? Colors.white
                          : Color(0xff616161)),
                )
              ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Divider(),
            ),
            RowItemSubscribe(
              data: S.of(context).txt_watch_all_you_want_ad_free,
            ),
            RowItemSubscribe(
              data: S.of(context).txt_allows_streaming_of4k,
            ),
            RowItemSubscribe(
              data: S.of(context).txt_video_audio_quality_is_better,
            ),
          ],
        ),
      ),
    );
  }
}

class RowItemSubscribe extends StatelessWidget {
  final String data;
  const RowItemSubscribe({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(
            Icons.check,
            color: getIt<AppCubit>().state.isDarkMode
                ? Colors.white
                : Theme.of(context).colorScheme.primary,
            size: 22,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Text(
              data,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}
