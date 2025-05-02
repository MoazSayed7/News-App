import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/services/hive_service.dart';
import '../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getBanners() async {
    emit(const HomeState.bannersLoading());
    final response = await _homeRepo.getBanners();
    try {
      response.when(
        success: (bannerResponseModel) async {
          await HiveService.saveBanners(bannerResponseModel);
          emit(HomeState.bannersSuccess(bannerResponseModel));
        },
        failure: (error) {
          final bannerResponseModel = HiveService.getBanners();
          if (bannerResponseModel != null) {
            emit(HomeState.bannersSuccess(bannerResponseModel));
          } else {
            emit(HomeState.bannersError(error.toString()));
          }
        },
      );
    } catch (error) {
      final bannerResponseModel = HiveService.getBanners();
      if (bannerResponseModel != null) {
        emit(HomeState.bannersSuccess(bannerResponseModel));
      } else {
        emit(HomeState.bannersError(error.toString()));
      }
    }
  }

  void getCategories() async {
    emit(const HomeState.categoriesLoading());
    final response = await _homeRepo.getCategories();
    try {
      response.when(
        success: (categoriesResponseModel) async {
          await HiveService.saveCategories(categoriesResponseModel);
          emit(HomeState.categoriesSuccess(categoriesResponseModel));
        },
        failure: (error) {
          final categoriesResponseModel = HiveService.getCategories();
          if (categoriesResponseModel != null) {
            emit(HomeState.categoriesSuccess(categoriesResponseModel));
          } else {
            emit(HomeState.categoriesError(error.toString()));
          }
        },
      );
    } catch (error) {
      final categoriesResponseModel = HiveService.getCategories();
      if (categoriesResponseModel != null) {
        emit(HomeState.categoriesSuccess(categoriesResponseModel));
      } else {
        emit(HomeState.categoriesError(error.toString()));
      }
    }
  }

  void getNews() async {
    emit(const HomeState.newsLoading());
    final response = await _homeRepo.getNews();
    try {
      response.when(
        success: (newsResponseModel) async {
          await HiveService.saveNews(newsResponseModel);
          emit(HomeState.newsSuccess(newsResponseModel));
        },
        failure: (error) {
          final newsResponseModel = HiveService.getNews();
          if (newsResponseModel != null) {
            emit(HomeState.newsSuccess(newsResponseModel));
          } else {
            emit(HomeState.newsError(error.toString()));
          }
        },
      );
    } catch (error) {
      final newsResponseModel = HiveService.getNews();
      if (newsResponseModel != null) {
        emit(HomeState.newsSuccess(newsResponseModel));
      } else {
        emit(HomeState.newsError(error.toString()));
      }
    }
  }
}
