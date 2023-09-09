import 'package:ecommerce/data/repository/popular_foods_repo.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/state_manager.dart';

import '../model/popular_food_model.dart';

class PopularFoodsController extends GetxController {
  final PopularFoodsRepo popularFoodsRepo;
  PopularFoodsController({required this.popularFoodsRepo});

  List<dynamic> _popularFoodsList = [];
  List<dynamic> get popularFoodsList => _popularFoodsList;

  Future<void> getPopularFoodsList() async {
    Response response = await popularFoodsRepo.getPopularFoodsList();
    if (response.statusCode == 200) {
      print('got products');
      _popularFoodsList = [];
      _popularFoodsList
          .addAll(Product.fromJson(response.body).products as Iterable);
      update();
      print(_popularFoodsList);
    } else {}
  }
}
