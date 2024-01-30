import 'package:ecommerce/common/widgets/layout/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [

                  ///Appbar
                  THomeAppBar(),

                  SizedBox(height: TSizes.spaceBtwSections),

                  ///Search bar

                  TSearchContainer(text: "Search in store"),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///Categories

                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [

                        /// Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColor.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        /// Categories

                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [

                  /// Promo slider
                  const TPromoSlider(banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3,
                    TImages.banner1
                  ],),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Popular products

                 TGridLayout(itemCount: 2, itemBuilder: (_,index) => const TProductCardVertical())


                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}




