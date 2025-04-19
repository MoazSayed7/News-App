import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/banner_response_model.dart';
import '../data/models/categories_response_model.dart';
import '../data/models/news_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.bannersError(String message) = BannersError;
  const factory HomeState.bannersLoading() = BannersLoading;
  const factory HomeState.bannersSuccess(BannerResponseModel response) =
      BannersSuccess;

  const factory HomeState.categoriesError(String message) = CategoriesError;
  const factory HomeState.categoriesLoading() = CategoriesLoading;
  const factory HomeState.categoriesSuccess(CategoriesResponseModel response) =
      CategoriesSuccess;

  const factory HomeState.initial() = _Initial;
  const factory HomeState.newsError(String message) = NewsError;
  const factory HomeState.newsLoading() = NewsLoading;
  const factory HomeState.newsSuccess(NewsResponseModel response) = NewsSuccess;
}
