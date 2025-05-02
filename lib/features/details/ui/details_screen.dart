import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../core/assets/svg_assets.dart';
import '../../../core/helpers/extensions.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/text_styles.dart';
import '../../home/data/models/news_response_model.dart';
import 'widgets/content_card.dart';
import 'widgets/header.dart';
import 'widgets/header_image.dart';

class DetailsScreen extends StatelessWidget {
  final NewsArticle newArticle;
  const DetailsScreen({super.key, required this.newArticle});
  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('MMMM d, yyyy');
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                HeaderImage(imageUrl: newArticle.imgUrl),
                _buildBackButton(context),
                _buildFavoriteButton(context),
                Container(
                  padding: EdgeInsets.only(left: 20.w, top: 341.h, right: 20.w),
                  child: Column(
                    children: [
                      Header(
                        title: newArticle.title,
                        author: newArticle.author,
                        publishedDate: formatter.format(newArticle.newsDate),
                      ),
                      verticalSpace(34),
                      Row(
                        spacing: 35.w,
                        children: [
                          _buildTab('Overview', isSelected: true),
                          _buildTab('Album'),
                          _buildTab('Discussion'),
                        ],
                      ),
                      verticalSpace(18),
                      ContentCard(
                        imageUrl: newArticle.imgUrl,
                        desc: newArticle.desc,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Positioned _buildBackButton(BuildContext ctx) {
    return Positioned(
      top: 40.h,
      left: 28.w,
      child: InkWell(
        splashColor: Colors.transparent,
        child: SvgPicture.asset(SvgAssets.backButton),
        onTap: () => ctx.pop(),
      ),
    );
  }

  Positioned _buildFavoriteButton(BuildContext context) {
    return Positioned(
      top: 40.h,
      right: 28.95.w,
      child: InkWell(
        splashColor: Colors.transparent,
        child: SvgPicture.asset(SvgAssets.heart),
        onTap: () {},
      ),
    );
  }

  Widget _buildTab(String title, {bool isSelected = false}) {
    return Column(
      children: [
        Text(
          title,
          style:
              isSelected
                  ? TextStyles.font12LimePastelBoldNunitoSans
                  : TextStyles.font12AshGrayRegularNunitoSans,
        ),
        if (isSelected) ...[
          verticalSpace(3),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.r),
              color: ColorsManager.limePastel,
            ),
            height: 2.h,
            width: 37.w,
          ),
        ],
      ],
    );
  }
}
