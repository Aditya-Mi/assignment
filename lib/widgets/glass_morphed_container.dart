import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphedContainer extends StatelessWidget {
  final double borderRadius;
  final Color? backgroundColor;
  final double blurValue;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Widget child;
  const GlassMorphedContainer({
    super.key,
    this.borderRadius = 0,
    this.backgroundColor,
    required this.blurValue,
    this.horizontalPadding,
    this.verticalPadding,
    required this.child,
  });

  EdgeInsetsGeometry _getPadding() {
    if (horizontalPadding != null && verticalPadding != null) {
      return EdgeInsets.symmetric(
          vertical: verticalPadding!, horizontal: horizontalPadding!);
    } else if (horizontalPadding != null) {
      return EdgeInsets.symmetric(horizontal: horizontalPadding!);
    } else if (verticalPadding != null) {
      return EdgeInsets.symmetric(vertical: verticalPadding!);
    } else {
      return const EdgeInsets.all(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: blurValue,
          sigmaY: blurValue,
        ),
        child: Container(
          padding: _getPadding(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: backgroundColor,
          ),
          child: child,
        ),
      ),
    );
  }
}
