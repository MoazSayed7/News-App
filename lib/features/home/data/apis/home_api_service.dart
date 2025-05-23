import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/banner_response_model.dart';
import '../models/categories_response_model.dart';
import '../models/news_response_model.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(ApiConstants.banners)
  Future<BannerResponseModel> getBanners();

  @GET(ApiConstants.category)
  Future<CategoriesResponseModel> getCategories();

  @GET(ApiConstants.news)
  Future<NewsResponseModel> getNews();
}
