import 'package:ecommerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// 1- Product Image Slider

            TProductImageSlider(),

            /// 2- Product Details

            Padding(
                padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
               child: Column(
                 children: [
                   /// Rating & sharing

                   TRatingAndShare(),
                   /// Price title stock and brand
                   TProductMetaData(),
                   /// Attributes
                   /// Checkout Button
                   /// Description
                   /// Reviews

                 ],
               ),

            ),

          ],
        ),
      ),
    );
  }
}




