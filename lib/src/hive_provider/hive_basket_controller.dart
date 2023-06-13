import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

import 'model/hive_basket_model.dart';

final hiveBasketProvider =
    StateNotifierProvider<HiveBasketNotifier, List<HiveBasketModel>>(
        (ref) => HiveBasketNotifier(ref));

class HiveBasketNotifier extends StateNotifier<List<HiveBasketModel>> {
  final Ref ref;
  HiveBasketNotifier(this.ref) : super([]) {
    getAllBasketItems();
  }
  getAllBasketItems() async {
    final box = await Hive.openBox<HiveBasketModel>('basket');
    // await Hive.deleteFromDisk();

    state = box.values.toList();
  }

  addItem(int id, String name, int price, int weight, String image,
      int count) async {
    final box = await Hive.openBox<HiveBasketModel>('basket');
    box.add(HiveBasketModel(
      id: id,
      name: name,
      price: price,
      weight: weight,
      image: image,
      count: count,
    ));
    state = [
      ...state,
      HiveBasketModel(
        id: id,
        name: name,
        price: price,
        weight: weight,
        image: image,
        count: count,
      )
    ];
  }

  bool isAddCart(int id) {
    return state.where((element) => element.id == id).isNotEmpty;
  }

  int getItemCount(int id) {
    return state
        .singleWhere(
            orElse: () => HiveBasketModel(
                  id: id,
                  name: '',
                  price: 0,
                  weight: 0,
                  image: '',
                  count: 1,
                ),
            (element) => element.id == id)
        .count;
  }

  HiveBasketModel getHiveBasketItem(int id) {
    return state.singleWhere((element) => element.id == id);
  }

  plusBasket(int id, int allCount) async {
    HiveBasketModel lastItem = state.singleWhere((element) => element.id == id);
    print("Kirish $lastItem");
    if (lastItem.count < 10) {
      if (lastItem.count < allCount) {
        final box = Hive.box<HiveBasketModel>('basket');
        final Map<dynamic, HiveBasketModel> cartMap = box.toMap();
        dynamic desiredKey;
        cartMap.forEach((key, value) {
          if (value.id == id) {
            desiredKey = key;
          }
        });
        box.put(
            desiredKey,
            HiveBasketModel(
              id: lastItem.id,
              count: lastItem.count + 1,
              image: lastItem.image,
              price: lastItem.price,
              weight: lastItem.weight,
              name: lastItem.name,
            ));
        state = box.values.toList();
      }
    }
  }

  minusBasket(int id) async {
    HiveBasketModel lastItem = state.singleWhere((element) => element.id == id);
    final box = Hive.box<HiveBasketModel>('basket');
    final Map<dynamic, HiveBasketModel> cartMap = box.toMap();
    dynamic desiredKey;
    cartMap.forEach((key, value) {
      if (value.id == id) {
        desiredKey = key;
      }
    });
    if (lastItem.count > 1) {
      box.put(
          desiredKey,
          HiveBasketModel(
            id: lastItem.id,
            count: lastItem.count - 1,
            image: lastItem.image,
            price: lastItem.price,
            weight: lastItem.weight,
            name: lastItem.name,
          ));
      state = box.values.toList();
    } else if (lastItem.count == 1) {
      box.delete(desiredKey);
      state = box.values.toList();
    }
  }

  totalSumma() {
    final box = Hive.box<HiveBasketModel>('basket');
    final activeList =
        ref.read(hiveBasketProvider.notifier).getAllBasketItems();
    double totalSumma = 0.0;
    for (var item in activeList) {
      HiveBasketModel productModel =
          state.singleWhere((element) => element.id == item.id);
      totalSumma = totalSumma + ((productModel.price) * item.count);
    }
    state = box.values.toList();
    print("state-------> $state");
  }
}
