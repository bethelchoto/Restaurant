import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/state_manager.dart';
import '../data/repository/recommended_food_repo.dart';
import '../model/popular_food_model.dart';

class RecommendedFoodsController extends GetxController {
  final RecommendedFoodsRepo recommendedFoodsRepo;
  RecommendedFoodsController({required this.recommendedFoodsRepo});

  List<dynamic> _recommendedFoodsList = [];
  List<dynamic> get recommendedFoodsList => _recommendedFoodsList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedFoodsList() async {
    Response response = await recommendedFoodsRepo.getRecommendedFoodsList();
    if (response.statusCode == 200) {
      // print('got products');
      _recommendedFoodsList = [];
      _recommendedFoodsList
          .addAll(Product.fromJson(response.body).products as Iterable);
      // addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update();
    } else {}
  }
}
