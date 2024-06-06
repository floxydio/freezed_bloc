import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_auth/bloc/category/category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(const CategoryState.initial());

  void getCategories() async {
    emit(const CategoryState.loading());
    try {
      final data = ['All', "Elektronik", "T-Shirt", "Laptop", "Mouse"];
      emit(CategoryState.loaded(data));
    } catch (e) {
      emit(const CategoryState.error('Failed to load data'));
    }
  }
}
