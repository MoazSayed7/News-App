import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';

class GetStartButton extends StatelessWidget {
  final void Function()? onTap;
  const GetStartButton({super.key, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      radius: 9.61.r,
      splashColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorsManager.darkGraphite,
              ColorsManager.darkGraphite.withValues(alpha: 0),
            ],
            stops: [0, 1],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(9.61.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        width: 137.w,
        height: 57.68.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Get Started', style: TextStyles.font14WhiteBoldPoppins),
            Container(
              decoration: BoxDecoration(
                color: ColorsManager.limePastel,
                borderRadius: BorderRadius.circular(9.5.r),
              ),
              width: 25.57.w,
              height: 25.57.h,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
