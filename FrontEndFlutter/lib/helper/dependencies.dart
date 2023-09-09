import 'package:ecommerce/data/api/api_client.dart';
import 'package:get/get.dart';
import '../controllers/popular_foods_controller.dart';
import '../data/repository/popular_foods_repo.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "http://127.0.0.1:8000"));
  // http://127.0.0.1:8000

  // repos
  Get.lazyPut(() => PopularFoodsRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularFoodsController(popularFoodsRepo: Get.find()));
}
// Error causing 