import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/dimensions.dart';
import 'package:ecommerce/widgets/big_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_icon.dart';
import '../../widgets/expandable_text.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.clear,
                ),
                AppIcon(icon: Icons.shopping_cart_checkout_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(35),
              child: Container(
                child: Center(
                  child: BigText(
                      size: Dimensions.font26, text: "Chicken And Rice"),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Color.fromARGB(255, 239, 156, 4),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/image001.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableText(
                      text:
                          "Indulge in the perfect harmony of flavors with our exquisite Chicken and Rice dish, expertly crafted to tantalize your taste buds. Prepared with meticulous attention to detail, this culinary masterpiece is sure to leave you craving for more. Our succulent, tender chicken breast is seasoned to perfection, marinated in a blend of aromatic herbs and spices that infuse it with an irresistible aroma. Grilled to achieve a delightful smoky char, each bite unveils a juicy and flavorful experience that will transport you to gastronomic bliss. Complementing the chicken is a bed of fluffy, fragrant rice cooked to perfection. Each grain is infused with a delicate blend of herbs and spices, creating a symphony of flavors that harmonize beautifully with the succulent chicken. The rice provides a comforting and satisfying foundation for the dish, adding a touch of warmth to every bite. To elevate this culinary delight even further, we add a medley of vibrant seasonal vegetables, carefully selected for their freshness and crispness. Their vibrant colors and textures not only create a visually appealing presentation but also provide a burst of freshness that perfectly balances the richness of the chicken and rice. Enhancing the dish is a velvety sauce, crafted from a secret blend of ingredients that add depth and complexity to the flavors. This signature sauce drapes the chicken and rice, transforming each forkful into a heavenly experience that will leave you enchanted. Whether you're a connoisseur seeking a delightful fusion of flavors or a comfort food enthusiast looking to satisfy your cravings, our Chicken and Rice dish is a culinary delight that promises to delight your senses and leave you with an unforgettable dining experience. Join us at [Hotel Name] and savor the harmony of flavors in our Chicken and Rice, a true masterpiece that embodies the essence of our commitment to exceptional dining. Indulge in the perfect harmony of flavors with our exquisite Chicken and Rice dish, expertly crafted to tantalize your taste buds. Prepared with meticulous attention to detail, this culinary masterpiece is sure to leave you craving for more. Our succulent, tender chicken breast is seasoned to perfection, marinated in a blend of aromatic herbs and spices that infuse it with an irresistible aroma. Grilled to achieve a delightful smoky char, each bite unveils a juicy and flavorful experience that will transport you to gastronomic bliss. Complementing the chicken is a bed of fluffy, fragrant rice cooked to perfection. Each grain is infused with a delicate blend of herbs and spices, creating a symphony of flavors that harmonize beautifully with the succulent chicken. The rice provides a comforting and satisfying foundation for the dish, adding a touch of warmth to every bite. To elevate this culinary delight even further, we add a medley of vibrant seasonal vegetables, carefully selected for their freshness and crispness. Their vibrant colors and textures not only create a visually appealing presentation but also provide a burst of freshness that perfectly balances the richness of the chicken and rice. Enhancing the dish is a velvety sauce, crafted from a secret blend of ingredients that add depth and complexity to the flavors. This signature sauce drapes the chicken and rice, transforming each forkful into a heavenly experience that will leave you enchanted. Whether you're a connoisseur seeking a delightful fusion of flavors or a comfort food enthusiast looking to satisfy your cravings, our Chicken and Rice dish is a culinary delight that promises to delight your senses and leave you with an unforgettable dining experience. Join us at [Hotel Name] and savor the harmony of flavors in our Chicken and Rice, a true masterpiece that embodies the essence of our commitment to exceptional dining."),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Padding(
          //   padding: EdgeInsets.only(
          //       left: Dimensions.width10, right: Dimensions.width10),
          // ),
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20,
              right: Dimensions.width20,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.remove,
                ),
                BigText(
                  text: " \$13.38 " + " X " + " 0 ",
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
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
                        Icons.favorite,
                        color: AppColors.mainColor,
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
        ],
      ),
    );
  }
}
