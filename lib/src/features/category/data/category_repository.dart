import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/src/base/retrofitclient.dart';
import 'package:food_app/src/constants/exceptions.dart';

import '../../../utils/pretty_dio_logger.dart';
import '../model/category_model.dart';

final clientRepo = Provider.autoDispose((ref) {
  final dio = Dio(BaseOptions(
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept-Language': 'ru',
    },
  ))
    ..interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        request: true,
        compact: true,
        maxWidth: 10000));
  final client = RestClient(dio);
  return client;
});

final categoryRepository = Provider.autoDispose<CategoryRepositoryApi>(
  (ref) {
    return CategoryRepositoryApi(ref);
  },
);

abstract class CategoryRepository {
  Future<List<CategoryModel>> getCategoryData();
}

class CategoryRepositoryApi implements CategoryRepository {
  final Ref ref;

  CategoryRepositoryApi(this.ref);

  Future<List<CategoryModel>> getCategoryData() async {
    try {
      List<CategoryModel> catalog = [];
      try {
        final response = await ref.read(clientRepo).getCategoryData();
        catalog.addAll(response.category ?? List.empty());
        print("object ${catalog.length}");
      } catch (e) {
        throw e.toString();
      }

      return catalog;
    } on DioException catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
