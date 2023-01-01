import 'package:flutter/material.dart';
import 'package:food_delivery/util/colors.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';
import '../../util/dimensions.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                child: Center(
                    child:
                        BigText(size: Dimensions.font26, text: "Chinese Side")),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/chinesefood.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                  text:
                      "Much like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sauce and pastes.Much like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sauce and pastes.Much like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sauce and pastes.Much like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sauce and pastes.Much like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sauce and pastes.Much like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sauce and pastes.Much like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sauce and pastes.Much like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sauce and pastes.Much like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sauce and pastes.Much like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sauce and pastes.Much like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sauce and pastes.Much like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sauce and pastes.Much like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sauce and pastes.Much like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sauce and pastes.Much like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sMuch like Japanese cuisine, Chinese dishes are rich in umami which is described as a 'pleasant savory taste'. The umami taste is common to many ingredients used in their cuisine like Chinese cabbage, spinach, celery, green tea or fermented products like soy sauce and pastes.auce and pastes. ",
                ),
                margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                ),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add)
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20 * 2),
                    topRight: Radius.circular(Dimensions.radius20 * 2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      bottom: Dimensions.height10,
                      left: Dimensions.width10,
                      right: Dimensions.width10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      bottom: Dimensions.height10,
                      left: Dimensions.width10,
                      right: Dimensions.width10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                  child: BigText(
                    text: "\$10  | Add to Cart",
                    color: Colors.white,
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
