import 'package:test_task/data/category_model.dart';
import 'package:test_task/data/category_service.dart';

class CategoryRepository {
  const CategoryRepository({
    required this.service,
  });
  final CategoryService service;

  Future<List<Category>> getCategories() async {
    List<Category> list = await service.getCategories();

    return list.where((element) => element.status != 'HIDDEN').toList();
  }
}
