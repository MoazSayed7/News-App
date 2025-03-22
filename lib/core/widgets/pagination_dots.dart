import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/colors.dart';

class CustomPaginationDots extends StatelessWidget {
  final int currentIndex;
  final List list;

  const CustomPaginationDots({
    super.key,
    required this.currentIndex,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
          list.asMap().entries.map((entry) {
            return Container(
              width: currentIndex == entry.key ? 9.61.w : 5.77.w,
              height: currentIndex == entry.key ? 9.61.h : 5.77.h,
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    currentIndex == entry.key
                        ? ColorsManager.limePastel
                        : ColorsManager.graniteGray,
              ),
              child:
                  currentIndex == entry.key
                      ? Center(
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black,
                          size: 7.sp,
                        ),
                      )
                      : null,
            );
          }).toList(),
    );
  }
}
