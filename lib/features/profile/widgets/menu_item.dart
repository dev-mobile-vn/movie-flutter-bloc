import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/common/enums/menu_type.dart';
import '../../../../../core/common/resource/icons.dart';
import '../../../../../core/common/widgets/svg_widget.dart';
import '../bloc/profile_bloc.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final String icLeft;
  final VoidCallback action;
  final MenuType type;
  final ProfileBloc bloc;

  const MenuItem({
    super.key,
    required this.title,
    required this.icLeft,
    required this.action,
    required this.type,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => action.call(),
      behavior: HitTestBehavior.translucent,
      child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
          child: BlocBuilder<ProfileBloc, ProfileState>(
            bloc: bloc..add(ProfileEvent.onInit()),
            builder: (context, state) {
              return Row(
                children: [
                  SvgWidget(
                    ic: icLeft,
                    color: state.isDarkMode ? Colors.white : null,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: state.isDarkMode ? Colors.white : Colors.black,
                        fontSize: 16),
                  ),
                  const Spacer(),
                  if (type == MenuType.language)
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Text(
                        state.languageName ?? "Not Found",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: state.isDarkMode
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 14),
                      ),
                    )
                  else if (type == MenuType.darkMode)
                    Container(
                      width: 44,
                      height: 24,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: state.isDarkMode
                            ? Colors.white
                            : Colors.grey.withValues(alpha: 0.5),
                        border: Border.all(
                            color: state.isDarkMode
                                ? Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withValues(alpha: 0.5)
                                : Colors.grey.withValues(alpha: 0.5),
                            width: state.isDarkMode ? 1 : 0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: state.isDarkMode
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        height: 24,
                        width: 22,
                        decoration: BoxDecoration(
                            color: state.isDarkMode
                                ? Theme.of(context).colorScheme.primary
                                : Colors.white,
                            shape: BoxShape.circle),
                      ),
                    ),
                  if (type != MenuType.darkMode)
                    SvgWidget(
                      ic: icArrowRight,
                      color: state.isDarkMode ? Colors.white : null,
                    ),
                ],
              );
            },
          )),
    );
  }
}
