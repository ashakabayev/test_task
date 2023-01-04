import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/data/category_model.dart';
import 'package:test_task/data/category_repository.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc(this.categoryRepository) : super(CategoryInitial()) {
    on<GetCategories>(_getCategories);
  }
  CategoryRepository categoryRepository;
  void _getCategories(GetCategories event, Emitter<CategoryState> emit) async {
    emit(CategoryLoading());

    try {
      final categories = await categoryRepository.getCategories();

      emit(CategoryLoaded(categories: categories));
    } catch (error) {
      foundation.debugPrint(error.toString());

      emit(CategoryError('Something went wrong...'));
    }
  }
}
