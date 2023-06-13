import 'package:dio/dio.dart';
import 'package:food_app/src/features/category/model/categories.dart';
import 'package:retrofit/retrofit.dart';

import '../features/category/model/category_model.dart';
import '../features/sub_category/model/sub_categories.dart';
part 'retrofitclient.g.dart';

@RestApi(baseUrl: 'https://run.mocky.io')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/v3/058729bd-1402-4578-88de-265481fd7d54')
  Future<Categories> getCategoryData();

  @GET('/v3/c7a508f2-a904-498a-8539-09d96785446e')
  Future<SubCategories> getSubCategoryData();
}
