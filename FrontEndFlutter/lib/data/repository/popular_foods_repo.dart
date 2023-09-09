import 'package:ecommerce/data/api/api_client.dart';
import 'package:ecommerce/utils/app_constants.dart';
import 'package:get/get.dart';

class PopularFoodsRepo extends GetxService {
  final ApiClient apiClient;
  PopularFoodsRepo({required this.apiClient});

  Future<Response> getPopularFoodsList() async {
    return await apiClient.getData(AppConstants.popularProductUrl);
  }
}
