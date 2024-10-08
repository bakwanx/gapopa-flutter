import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmer extends StatelessWidget {
  final double width;
  final double height;
  final BoxDecoration? boxDecorationOne;
  final BoxDecoration? boxDecorationTwo;
  final EdgeInsets? margin;

  CustomShimmer({
    required this.width,
    required this.height,
    this.boxDecorationOne,
    this.boxDecorationTwo,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: boxDecorationOne ??
          BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade100,
        highlightColor: Colors.grey.shade50,
        child: Container(
          width: width,
          height: height,
          decoration: boxDecorationTwo ??
              BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
        ),
      ),
    );
  }
}
