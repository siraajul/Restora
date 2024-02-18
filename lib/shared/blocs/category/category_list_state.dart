import 'package:equatable/equatable.dart';
import 'package:restora/shared/models/onboarding/onBoarding_category_dto.dart';

abstract class CategoryListState extends Equatable {
  const CategoryListState();

  @override
  List<Object> get props => [];
}

class CategoryListInitial extends CategoryListState {
  const CategoryListInitial();

  @override
  List<Object> get props => [];
}

class CategoryListLoading extends CategoryListState {
  const CategoryListLoading();

  @override
  List<Object> get props => [];
}

class CategoryListLoaded extends CategoryListState {
  const CategoryListLoaded(this.categoryList);

  final List<OnboardingCategoryDTO> categoryList;

  @override
  List<Object> get props => [categoryList];
}

class CategoryListEmpty extends CategoryListState {
  const CategoryListEmpty();

  @override
  List<Object> get props => [];
}

class CategoryListError extends CategoryListState {
  const CategoryListError();

  @override
  List<Object> get props => [];
}
