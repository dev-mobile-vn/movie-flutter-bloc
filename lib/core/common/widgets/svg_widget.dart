import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgWidget extends StatelessWidget {
  final String ic;
  final Color? color;
  final double? height;
  final double? width;

  const SvgWidget({super.key, required this.ic, this.color, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      ic,
      width: width,
      height: height,
      fit: BoxFit.none,
      color: color,
      theme: SvgTheme(currentColor: color ?? Colors.white,),
    );
  }
}
