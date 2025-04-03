import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/categories_response_model.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';
import 'tap_bar.dart';

class CategoriesBlocBuilder extends StatefulWidget {
  const CategoriesBlocBuilder({super.key});

  @override
  State<CategoriesBlocBuilder> createState() => _CategoriesBlocBuilderState();
}

class _CategoriesBlocBuilderState extends State<CategoriesBlocBuilder> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is CategoriesSuccess || current is CategoriesError,
      builder: (context, state) {
        return state.maybeWhen(
          categoriesSuccess: (categoriesResponseModel) {
            return setupSuccess(categoriesResponseModel);
          },
          categoriesError: (error) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupError() => const SizedBox.shrink();

  Widget setupSuccess(CategoriesResponseModel categoriesResponseModel) {
    return ExactTabBar(categories: categoriesResponseModel.data);
  }
}
