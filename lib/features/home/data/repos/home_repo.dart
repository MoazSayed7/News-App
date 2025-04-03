import '../../../../core/networking/api_result.dart';
import '../apis/home_api_service.dart';
import '../models/banner_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<BannerResponseModel>> getBanners() async {
    try {
      final response = await _homeApiService.getBanners();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
