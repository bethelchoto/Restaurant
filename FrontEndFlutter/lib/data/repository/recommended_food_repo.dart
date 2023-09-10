import 'package:ecommerce/data/api/api_client.dart';
import 'package:ecommerce/utils/app_constants.dart';
import 'package:get/get.dart';

class RecommendedFoodsRepo extends GetxService {
  final ApiClient apiClient;
  RecommendedFoodsRepo({required this.apiClient});

  Future<Response> getRecommendedFoodsList() async {
    return await apiClient.getData(AppConstants.recommandedProductUrl);
  }
}
