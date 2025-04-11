import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/section_header.dart';
import '../../../data/models/news_response_model.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';
import 'horizontal_news_card.dart';
import 'vertical_news_card.dart';

class NewsBlocBuilder extends StatelessWidget {
  const NewsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is NewsError ||
              current is NewsLoading ||
              current is NewsSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          newsSuccess: (newsResponseModel) {
            return setupSuccess(newsResponseModel);
          },
          newsError: (error) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupError() => const SizedBox.shrink();

  Widget setupSuccess(NewsResponseModel newsResponseModel) {
    return Column(
      children: [
        _buildVerticalCards(newsResponseModel),
        verticalSpace(17.34),
        SectionHeader(title: 'Recommended Article', buttonText: 'Show All'),
        verticalSpace(14),
        _buildHorizontalCards(newsResponseModel),
      ],
    );
  }

  SizedBox _buildHorizontalCards(NewsResponseModel newsResponseModel) {
    return SizedBox(
      height: 600.h,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return CustomHorizontalCard(
            imageUrl: newsResponseModel.data[index].imgUrl,
            desc: newsResponseModel.data[index].desc,
          );
        },
        separatorBuilder: (context, index) {
          return verticalSpace(15);
        },
        padding: EdgeInsets.zero,
        itemCount: newsResponseModel.data.length,
      ),
    );
  }

  SizedBox _buildVerticalCards(NewsResponseModel newsResponseModel) {
    return SizedBox(
      height: 210.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return CustomVerticalCard(
            imageUrl: newsResponseModel.data[index].imgUrl,
            desc: newsResponseModel.data[index].desc,
          );
        },
        separatorBuilder: (context, index) {
          return horizontalSpace(15);
        },
        itemCount: newsResponseModel.data.length,
      ),
    );
  }
}
