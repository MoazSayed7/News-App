import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/section_header.dart';
import 'widgets/banners/banners_bloc_builder.dart';
import 'widgets/categories/categories_bloc_builder.dart';
import 'widgets/news/news_bloc_builder.dart';
import 'widgets/top_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 33.65.w, vertical: 45.19.h),
          child: Column(
            children: [
              TopHeader(),
              verticalSpace(28.22),
              BannersBlocBuilder(),
              verticalSpace(32.7),
              CategoriesBlocBuilder(),
              verticalSpace(16.34),
              SectionHeader(
                title: 'Recommended Article',
                buttonText: 'Show All',
              ),
              verticalSpace(12.48),
              NewsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
