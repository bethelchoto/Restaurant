import 'package:ecommerce/controllers/popular_foods_controller.dart';
import 'package:ecommerce/controllers/recommended_food_controller.dart';
import 'package:ecommerce/pages/home/food_page_body.dart';
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
    Get.find<RecommendedFoodsController>().getRecommendedFoodsList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainFoodPage(),
    );
  }
}
