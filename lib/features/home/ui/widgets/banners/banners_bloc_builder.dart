import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/banner_response_model.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';
import 'image_carousel.dart';
import 'image_carousel_loading.dart';

class BannersBlocBuilder extends StatefulWidget {
  const BannersBlocBuilder({super.key});

  @override
  State<BannersBlocBuilder> createState() => _BannersBlocBuilderState();
}

class _BannersBlocBuilderState extends State<BannersBlocBuilder> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is BannersSuccess ||
              current is BannersError ||
              current is BannersLoading,
      builder: (context, state) {
        return state.maybeWhen(
          bannersSuccess: (bannerResponseModel) {
            return setupSuccess(bannerResponseModel);
          },
          orElse: () => setupLoading(),
        );
      },
    );
  }

  Widget setupLoading() {
    return CarouselSliderPageLoading();
  }

  Widget setupSuccess(BannerResponseModel bannerResponseModel) {
    return CarouselSliderPage(bannersList: bannerResponseModel.data);
  }
}
