import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/banner_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.bannersError(String message) = BannersError;
  const factory HomeState.bannersLoading() = BannersLoading;
  const factory HomeState.bannersSuccess(BannerResponseModel response) =
      BannersSuccess;
}
