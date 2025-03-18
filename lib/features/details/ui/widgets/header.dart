import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';

class Header extends StatelessWidget {
  final String title;
  final String author;
  final String publishedDate;
  const Header({
    super.key,
    required this.title,
    required this.author,
    required this.publishedDate,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyles.font24WhiteBoldNunitoSans),
        verticalSpace(6),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'By ',
                style: TextStyles.font10WhiteLightNunitoSans,
              ),
              TextSpan(
                text: author,
                style: TextStyles.font10WarmAmberSemiBoldNunitoSans,
              ),
            ],
          ),
        ),
        verticalSpace(11),
        Divider(color: ColorsManager.silverGray, height: .4.h),
        verticalSpace(9),
        Text(
          'Published $publishedDate',
          style: TextStyles.font10WhiteLightNunitoSans,
        ),
      ],
    );
  }
}
