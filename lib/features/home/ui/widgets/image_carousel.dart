import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/pagination_dots.dart';

class CarouselSliderPage extends StatefulWidget {
  const CarouselSliderPage({super.key});

  @override
  State<CarouselSliderPage> createState() => _CarouselSliderPageState();
}

class _CarouselSliderPageState extends State<CarouselSliderPage> {
  int _currentIndex = 0;

  // List of images (for now, we only have one)
  final List<String> imageList = [
    'https://www.animalsaroundtheglobe.com/wp-content/uploads/2024/10/wade-lambert-_nxSTrpH1Is-unsplash-768x512.webp',
    'https://www.animalsaroundtheglobe.com/wp-content/uploads/2024/10/wade-lambert-_nxSTrpH1Is-unsplash-768x512.webp',
    'https://www.animalsaroundtheglobe.com/wp-content/uploads/2024/10/wade-lambert-_nxSTrpH1Is-unsplash-768x512.webp',
    'https://www.animalsaroundtheglobe.com/wp-content/uploads/2024/10/wade-lambert-_nxSTrpH1Is-unsplash-768x512.webp',
  ];

  bool _isPlayed = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Carousel Slider
        CarouselSlider(
          options: CarouselOptions(
            height: 135.56.h, // Adjust the height as needed
            autoPlay: _isPlayed, // Set to true if you want auto-play
            enlargeCenterPage: true,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items:
              imageList.map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        // Image
                        Container(
                          width: double.infinity,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23.07.r),
                          ),
                          child: ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  ColorsManager.deepMossGreen,
                                  ColorsManager.darkOliveGray.withValues(
                                    alpha: .7,
                                  ),
                                  ColorsManager.eclipseBlack.withValues(
                                    alpha: 0,
                                  ),
                                ],
                                stops: const [0.0, .5, 1.0],
                              ).createShader(bounds);
                            },
                            blendMode:
                                BlendMode
                                    .srcATop, // Adjust blend mode as needed
                            child: Transform.flip(
                              filterQuality: FilterQuality.high,
                              flipX: true,
                              child: CachedNetworkImage(
                                imageUrl: imageUrl,
                                fit: BoxFit.cover,
                                filterQuality: FilterQuality.high,
                                progressIndicatorBuilder:
                                    (context, url, downloadProgress) =>
                                        CircularProgressIndicator(
                                          value: downloadProgress.progress,
                                        ),
                                errorWidget:
                                    (context, url, error) => Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        // "ANIMALS" label with yellow bar
                        Positioned(
                          bottom: 29.51.h,
                          left: 19.32.w,
                          child: Row(
                            spacing: 2.w,
                            children: [
                              Container(
                                width: 7.69.w,
                                height: 19.23.h,
                                color: ColorsManager.goldenSun,
                              ),
                              Text(
                                'ANIMALS',
                                style: TextStyles.font13WhiteBoldPoppins,
                              ),
                            ],
                          ),
                        ),
                        // Play button in the top left
                        Positioned(
                          top: 17.31.h,
                          left: 18.27.w,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _isPlayed = !_isPlayed;
                              });
                            },
                            splashColor: Colors.transparent,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: ColorsManager.deepForestGreen,
                                shape: BoxShape.circle,
                              ),
                              width: 21.15.w,
                              height: 21.15.h,
                              child: Icon(
                                _isPlayed
                                    ? Icons.pause_rounded
                                    : Icons.play_arrow_rounded,
                                color: Colors.white,
                                size: 13.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
        ),
        // Pagination dots
        Positioned(
          bottom: 10.58.h,
          left: 0.w,
          right: 0.w,
          child: CustomPaginationDots(
            currentIndex: _currentIndex,
            list: imageList,
          ),
        ),
      ],
    );
  }
}
