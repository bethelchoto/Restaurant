import 'package:ecommerce/controllers/popular_foods_controller.dart';
import 'package:ecommerce/data/api/api_client.dart';
import 'package:ecommerce/pages/food/popular_food.dart';
import 'package:ecommerce/pages/food/recommandation_food_details.dart';
import 'package:ecommerce/pages/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularFoodsController>().getPopularFoodsList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecommendedFoodDetails(),
    );
  }
}
