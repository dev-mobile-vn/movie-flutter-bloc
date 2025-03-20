import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:movie/core/cubit/app_cubit.dart';
import 'package:movie/di/dependency_injection.dart';

class Loading extends StatelessWidget {
  final double size;
  const Loading({
    super.key,
    this.size = 34,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Center(
        child: LoadingAnimationWidget.hexagonDots(
          color: getIt<AppCubit>().state.isDarkMode
              ? Colors.white
              : Theme.of(context).primaryColor,
          size: size,
        ),
      ),
    );
  }
}
