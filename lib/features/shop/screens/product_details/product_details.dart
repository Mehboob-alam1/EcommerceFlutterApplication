import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {

    return   Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// 1- Product Image Slider

            const TProductImageSlider(),

            /// 2- Product Details

            Padding(
                padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
               child: Column(
                 children: [
                   /// Rating & sharing

                   const TRatingAndShare(),
                   /// Price title stock and brand
                   const TProductMetaData(),
                   /// Attributes
                   const ProductAttributes(),


                   const SizedBox(height: TSizes.spaceBtwSections),
                   /// Checkout Button
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                   const SizedBox(height: TSizes.spaceBtwSections),

                   /// Description
                   const TSectionHeading(title: 'Description',showActionButton: false),
                   const SizedBox(height: TSizes.spaceBtwItems),

                   const ReadMoreText(
                     'This is a product description for blue Nike Sleeve less vest. There are more things that can be addded to this decription as i want to check this widget if its working or not so let\'s test it out...',
                     trimLines: 2,
                     trimMode: TrimMode.Line,
                     trimCollapsedText: "Show more",

                     trimExpandedText: "Show less",
                     moreStyle: TextStyle(fontSize:  14, fontWeight: FontWeight.w800),
                     lessStyle: TextStyle(fontSize:  14, fontWeight: FontWeight.w800),
                   ),
                  
                   /// Reviews
                   const Divider(),
                   const SizedBox(height: TSizes.spaceBtwItems),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       const TSectionHeading(title: 'Reviews(199)',showActionButton: false),
                       IconButton(onPressed: ()=>Get.to(()=>const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3,size: 18)),
                     ],
                   ),
                   const SizedBox(height: TSizes.spaceBtwSections),

                 ],
               ),

            ),

          ],
        ),
      ),
    );
  }
}




