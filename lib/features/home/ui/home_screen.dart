import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theme/colors.dart';
import '../../../core/widgets/section_header.dart';
import 'widgets/horizontal_card.dart';
import 'widgets/image_carousel.dart';
import 'widgets/tap_bar.dart';
import 'widgets/top_header.dart';
import 'widgets/vertical_card.dart';

class HomeScreen extends StatelessWidget {
  final data = [
    {
      'image':
          'https://images.unsplash.com/photo-1611262084470-0e8686d7be78?q=80&w=1886&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'desc': 'The 12 most intriguing animal discoveries of 2021',
    },
    {
      'image':
          'https://www.openhorizons.org/uploads/5/9/1/5/5915900/fernando-santander-l-qqk3mzf6m-unsplash_orig.jpg',
      'desc': 'Snakebites kill tens thousands of africans a year',
    },
  ];
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.deepOliveBlack,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 33.65.w, vertical: 45.19.h),
          child: Column(
            children: [
              TopHeader(),
              verticalSpace(28.22),
              CarouselSliderPage(),
              verticalSpace(32.7),
              ExactTabBar(),
              verticalSpace(16.34),
              SectionHeader(
                title: 'Recommended Article',
                buttonText: 'Show All',
              ),
              verticalSpace(12.48),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 15.31.w,
                ),
                shrinkWrap:
                    true, // Prevents GridView from taking infinite height
                physics:
                    const NeverScrollableScrollPhysics(), // Disables scrolling if not needed
                itemCount: 2,
                itemBuilder: (context, index) {
                  return CustomVerticalCard(
                    imageUrl: data[index]['image']!,
                    desc: data[index]['desc']!,
                  );
                },
              ),
              verticalSpace(17.34),
              SectionHeader(
                title: 'Recommended Article',
                buttonText: 'Show All',
              ),
              verticalSpace(12.84),
              CustomHorizontalCard(),
            ],
          ),
        ),
      ),
    );
  }
}
