// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:restora/shared/services/category/category_service.dart';
import '../../models/onboarding/onBoarding_category_dto.dart';
import 'category_list_event.dart';
import 'category_list_state.dart';

class CategoryListBloc extends Bloc<CategoryListEvent, CategoryListState> {
  CategoryListBloc({required this.categoryService})
      : super(const CategoryListInitial()) {
    on<GetCategories>(_getCategories);
  }

  final CategoryService categoryService;
  List<OnboardingCategoryDTO> categoryList = [];

  Future<void> _getCategories(
    GetCategories event,
    Emitter<CategoryListState> emit,
  ) async {

    emit(const CategoryListLoading());

    final response = await categoryService.getAllOnboardingCategories();

    if (response.error == null) {
      final dto = jsonDecode(response.data);

      print(dto['data']);
      final List list = dto['data'];
      categoryList =
          list.map((item) => OnboardingCategoryDTO.fromJson(item)).toList();

      if (categoryList.isNotEmpty) {

        emit(CategoryListLoaded(categoryList));
      } else {
        emit(const CategoryListEmpty());
      }
    } else {
      emit(const CategoryListError());
    }
  }
}
