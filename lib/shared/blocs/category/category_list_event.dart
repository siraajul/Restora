import 'package:equatable/equatable.dart';

abstract class CategoryListEvent extends Equatable {
  const CategoryListEvent();

  @override
  List<Object> get props => [];
}

class GetCategories extends CategoryListEvent {
  const GetCategories();

  @override
  List<Object> get props => [];
}
