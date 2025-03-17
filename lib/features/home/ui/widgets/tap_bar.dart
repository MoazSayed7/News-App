import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';

class ExactTabBar extends StatefulWidget {
  const ExactTabBar({super.key});

  @override
  State<ExactTabBar> createState() => _ExactTabBarState();
}

class _ExactTabBarState extends State<ExactTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _tabs = ['Science', 'Environment', 'Animals', 'Travel'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: ColorsManager.charcoalOlive,
        borderRadius: BorderRadius.circular(7.7.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 0.h),
        child: TabBar(
          onTap: (value) {
            setState(() {});
            _tabController.index = value;
          },
          controller: _tabController,
          labelPadding: EdgeInsets.symmetric(horizontal: 12.w),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 4.w),
          indicator: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: ColorsManager.limePastel, // Lime green color
                width: 2.w,
              ),
            ),
          ),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          labelStyle: TextStyles.font12WhiteMediumPoppins,
          unselectedLabelStyle: TextStyles.font10WhiteRegularPoppins,
          dividerColor: Colors.transparent,
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          splashFactory: NoSplash.splashFactory,
          tabs: _tabs.map((tab) => Tab(text: tab)).toList(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }
}
