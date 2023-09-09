import 'package:ecommerce/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/app_column.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';
import '../../widgets/expandable_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/image0001.jpg"),
                ),
              ),
            ),
          ),
          // icon widget
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            ),
          ),
          // introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - Dimensions.height30,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Rice And Chicken"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                        text:
                            "Indulge in the perfect harmony of flavors with our exquisite Chicken and Rice dish, expertly crafted to tantalize your taste buds. Prepared with meticulous attention to detail, this culinary masterpiece is sure to leave you craving for more. Our succulent, tender chicken breast is seasoned to perfection, marinated in a blend of aromatic herbs and spices that infuse it with an irresistible aroma. Grilled to achieve a delightful smoky char, each bite unveils a juicy and flavorful experience that will transport you to gastronomic bliss. Complementing the chicken is a bed of fluffy, fragrant rice cooked to perfection. Each grain is infused with a delicate blend of herbs and spices, creating a symphony of flavors that harmonize beautifully with the succulent chicken. The rice provides a comforting and satisfying foundation for the dish, adding a touch of warmth to every bite. To elevate this culinary delight even further, we add a medley of vibrant seasonal vegetables, carefully selected for their freshness and crispness. Their vibrant colors and textures not only create a visually appealing presentation but also provide a burst of freshness that perfectly balances the richness of the chicken and rice. Enhancing the dish is a velvety sauce, crafted from a secret blend of ingredients that add depth and complexity to the flavors. This signature sauce drapes the chicken and rice, transforming each forkful into a heavenly experience that will leave you enchanted. Whether you're a connoisseur seeking a delightful fusion of flavors or a comfort food enthusiast looking to satisfy your cravings, our Chicken and Rice dish is a culinary delight that promises to delight your senses and leave you with an unforgettable dining experience. Join us at [Hotel Name] and savor the harmony of flavors in our Chicken and Rice, a true masterpiece that embodies the essence of our commitment to exceptional dining.",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Expandable Text widget
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(
          left: Dimensions.width20,
          right: Dimensions.width20,
          top: Dimensions.height30,
          bottom: Dimensions.height30,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackGround,
          // color: Colors.redAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
                bottom: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(
                    text: "0",
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
                bottom: Dimensions.height20,
              ),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
