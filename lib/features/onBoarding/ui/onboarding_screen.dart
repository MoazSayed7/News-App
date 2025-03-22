import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/extensions.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/routers/routes.dart';
import '../../../core/theme/text_styles.dart';
import '../../../core/widgets/pagination_dots.dart';
import 'widgets/get_start_button.dart';
import 'widgets/onboarding_image.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          OnBoardingImage(),
          Padding(
            padding: EdgeInsets.only(top: 500.h, left: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover nature\nand explore beyond',
                  style: TextStyles.font28PureSnowSemiBoldPoppins,
                ),
                verticalSpace(13),
                Text(
                  'find with us your dream house\nquickly and precisely',
                  style: TextStyles.font13SilverGrayLightPoppins,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 35.h,
            right: 20.w,
            left: 20.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomPaginationDots(
                  currentIndex: _currentIndex,
                  list: [0, 1, 2, 3],
                ),
                GetStartButton(
                  onTap:
                      () => setState(() {
                        if (_currentIndex < 3) {
                          _currentIndex += 1;
                        } else {
                          context.pushReplacementNamed(Routes.homeScreen);
                        }
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
