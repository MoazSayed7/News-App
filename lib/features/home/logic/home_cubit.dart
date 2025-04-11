import 'package:flutter_bloc/flutter_bloc.dart';

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
        success: (bannerResponseModel) {
          emit(HomeState.bannersSuccess(bannerResponseModel));
        },
        failure: (error) {
          emit(HomeState.bannersError(error.toString()));
        },
      );
    } catch (error) {
      emit(HomeState.bannersError(error.toString()));
    }
  }

  void getCategories() async {
    emit(const HomeState.categoriesLoading());
    final response = await _homeRepo.getCategories();
    try {
      response.when(
        success: (categoriesResponseModel) {
          emit(HomeState.categoriesSuccess(categoriesResponseModel));
        },
        failure: (error) {
          emit(HomeState.categoriesError(error.toString()));
        },
      );
    } catch (error) {
      emit(HomeState.categoriesError(error.toString()));
    }
  }

  void getNews() async {
    emit(const HomeState.newsLoading());
    final response = await _homeRepo.getNews();
    try {
      response.when(
        success: (newsResponseModel) {
          emit(HomeState.newsSuccess(newsResponseModel));
        },
        failure: (error) {
          emit(HomeState.newsError(error.toString()));
        },
      );
    } catch (error) {
      emit(HomeState.newsError(error.toString()));
    }
  }
}
