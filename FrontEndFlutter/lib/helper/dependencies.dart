import 'package:ecommerce/data/api/api_client.dart';
import 'package:ecommerce/utils/app_constants.dart';
import 'package:get/get.dart';
import '../controllers/popular_foods_controller.dart';
import '../data/repository/popular_foods_repo.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.baseUrl));

  // repos
  Get.lazyPut(() => PopularFoodsRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularFoodsController(popularFoodsRepo: Get.find()));
}
// Error causing 