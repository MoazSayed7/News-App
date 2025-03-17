import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/text_styles.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello Moaz', style: TextStyles.font17WhiteSemiBoldNunitoSans),
            Text(
              'Have a nice day',
              style: TextStyles.font11GrayStoneRegularNunitoSans,
            ),
          ],
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2.w),
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.network(
              'https://avatars.githubusercontent.com/u/75115429?v=4',
              width: 42.w,
              height: 42.h,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
