import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/src/base/retrofitclient.dart';
import 'package:food_app/src/features/sub_category/model/sub_category_model.dart';

import '../../../constants/app_constants.dart';
import '../../../constants/exceptions.dart';
import '../../../utils/pretty_dio_logger.dart';

final clientRepo = Provider.autoDispose((ref) {
  final dio = Dio(BaseOptions(
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept-Language': 'ru',
    },
    baseUrl: AppConstants.baseUrl,
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

final subCategoryRepository = Provider.autoDispose<SubCategoryRepositoryApi>(
  (ref) {
    return SubCategoryRepositoryApi(ref);
  },
);

abstract class SubCategoryRepository {
  Future<List<SubCategoryModel>> getSubCategoryData();
}

class SubCategoryRepositoryApi implements SubCategoryRepository {
  final Ref ref;

  SubCategoryRepositoryApi(this.ref);

  Future<List<SubCategoryModel>> getSubCategoryData() async {
    try {
      List<SubCategoryModel> subCatalog = [];
      try {
        final response = await ref.read(clientRepo).getSubCategoryData();
        subCatalog.addAll(response.subCategory ?? List.empty());
      } catch (e) {
        throw e.toString();
      }

      return subCatalog;
    } on DioException catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
