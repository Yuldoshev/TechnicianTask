import 'package:hive/hive.dart';

part 'hive_basket_model.g.dart';

@HiveType(typeId: 0)
class HiveBasketModel extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String image;
  @HiveField(3)
  final int price;
  @HiveField(4)
  final int weight;
  @HiveField(5)
  final int count;

  HiveBasketModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.weight,
    required this.count,
  });
}
