import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CarouselSliderPageLoading extends StatelessWidget {
  const CarouselSliderPageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135.56.h,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[800]!,
        highlightColor: Colors.grey[600]!,
        child: Stack(
          children: [
            // Carousel placeholder
            Container(
              height: 135.56.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
