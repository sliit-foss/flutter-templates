import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:catfacts/config/themes/colors.dart';

class Skeleton extends StatelessWidget {
  final double? height;
  final double? width;
  final BorderRadiusGeometry? radius;
  final EdgeInsetsGeometry? margin;
  final BoxShape? shape;
  final Widget? child;

  const Skeleton({super.key, this.height, this.width, this.radius, this.margin, this.shape, this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.skeletonBase,
      highlightColor: AppColors.skeletonHighlight,
      child: child ??
          Container(
            height: height,
            width: width,
            margin: margin ?? EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: shape ?? BoxShape.rectangle,
              borderRadius: shape == null ? radius ?? BorderRadius.circular(8) : null,
            ),
          ),
    );
  }
}
