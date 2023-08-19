import 'package:ecommerce/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularFoodsRepo extends GetxService {
  final ApiClient apiClient;
  PopularFoodsRepo({required this.apiClient});

  Future<Response> getPopularFoodsList() async {
    return await apiClient.getData("end point url");
  }
}
