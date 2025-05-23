import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/helpers/home_widget.dart';
import '../../../../../core/helpers/shared_pref_helper.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/text_styles.dart';
import '../../../../../core/widgets/pagination_dots.dart';
import '../../../data/models/banner_response_model.dart';

class BannerItem extends StatelessWidget {
  final DataItem dataItem;
  final bool isPlayed;
  final VoidCallback onPlayToggle;

  const BannerItem({
    super.key,
    required this.dataItem,
    required this.isPlayed,
    required this.onPlayToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [_buildImage(), _buildLabel(), _buildPlayButton()]);
  }

  Widget _buildImage() {
    final imageUrl =
        dataItem.id == 3
            ? 'https://avatars.githubusercontent.com/u/75115429?v=4'
            : dataItem.imageUrl;
    return Container(
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(23.07.r)),
      child: ShaderMask(
        shaderCallback:
            (Rect bounds) => LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                ColorsManager.deepMossGreen,
                ColorsManager.darkOliveGray.withValues(alpha: 0.7),
                ColorsManager.eclipseBlack.withValues(alpha: 0),
              ],
              stops: const [0.0, 0.5, 1.0],
            ).createShader(bounds),
        blendMode: BlendMode.srcATop,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          imageBuilder: (context, imageProvider) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              if (await SharedPrefHelper.getBool('dataAdded') != true) {
                await DefaultCacheManager().getFileFromCache(imageUrl).then((
                  file,
                ) {
                  if (file == null) {
                    return;
                  }
                  debugPrint('File path: ${file.file.path}');
                  _saveImagePathToHomeWidget(file.file.path);
                });
              }
            });
            return Image(
              image: imageProvider,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            );
          },
          placeholder:
              (context, url) => Shimmer.fromColors(
                baseColor: Colors.grey[800]!,
                highlightColor: Colors.grey[600]!,
                child: Container(color: Colors.white),
              ),
          errorWidget:
              (context, url, error) => Shimmer.fromColors(
                baseColor: Colors.grey[800]!,
                highlightColor: Colors.grey[600]!,
                child: Container(color: Colors.white),
              ),
        ),
      ),
    );
  }

  Widget _buildLabel() {
    return Positioned(
      bottom: 29.51.h,
      left: 19.32.w,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 7.69.w,
            height: 19.23.h,
            color: ColorsManager.goldenSun,
          ),
          SizedBox(width: 2.w),
          Text(
            dataItem.id == 3 ? 'Moaz Sayed' : dataItem.name,
            style: TextStyles.font13WhiteBoldPoppins,
          ),
        ],
      ),
    );
  }

  Widget _buildPlayButton() {
    return Positioned(
      top: 17.31.h,
      left: 18.27.w,
      child: InkWell(
        onTap: onPlayToggle,
        splashColor: Colors.transparent,
        child: Container(
          width: 21.15.w,
          height: 21.15.h,
          decoration: const BoxDecoration(
            color: ColorsManager.deepForestGreen,
            shape: BoxShape.circle,
          ),
          child: Icon(
            isPlayed ? Icons.pause_rounded : Icons.play_arrow_rounded,
            color: Colors.white,
            size: 13.sp,
          ),
        ),
      ),
    );
  }

  Future<void> _saveImagePathToHomeWidget(String path) async {
    // Get the existing list of image Paths, or initialize an empty list
    List<String> imagePaths =
        await SharedPrefHelper.getStringList('newsData') ?? [];

    // Check if the Path is already in the list to avoid duplicates
    if (!imagePaths.contains(path)) {
      imagePaths.add(path);
      await SharedPrefHelper.setStringList('newsData', imagePaths);

      // Check if the list length is 4
      if (imagePaths.length == 4) {
        print(imagePaths);
        await HomeWidgetHelper.saveToHomeWidget(imagePaths);
        await SharedPrefHelper.setBool('dataAdded', true);
      }
    }
  }
}

// Main Carousel Slider Page
class CarouselSliderPage extends StatefulWidget {
  final List<DataItem> bannersList;
  const CarouselSliderPage({super.key, required this.bannersList});

  @override
  State<CarouselSliderPage> createState() => _CarouselSliderPageState();
}

class _CarouselSliderPageState extends State<CarouselSliderPage> {
  int _currentIndex = 0;
  bool _isPlayed = true;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [_buildCarouselSlider(), _buildPaginationDots()]);
  }

  Widget _buildCarouselSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 135.56.h,
        autoPlay: _isPlayed,
        enlargeCenterPage: true,
        viewportFraction: 1,
        onPageChanged: (index, reason) => setState(() => _currentIndex = index),
      ),
      items:
          widget.bannersList
              .map(
                (bannerItem) => BannerItem(
                  dataItem: bannerItem,
                  isPlayed: _isPlayed,
                  onPlayToggle: () => setState(() => _isPlayed = !_isPlayed),
                ),
              )
              .toList(),
    );
  }

  Widget _buildPaginationDots() {
    return Positioned(
      bottom: 10.58.h,
      left: 0.w,
      right: 0.w,
      child: CustomPaginationDots(
        currentIndex: _currentIndex,
        list: widget.bannersList,
      ),
    );
  }
}
