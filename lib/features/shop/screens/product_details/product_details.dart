import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {

    return   Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
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
                   ProductAttributes(),


                   SizedBox(height: TSizes.spaceBtwSections),
                   /// Checkout Button
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: Text('Checkout'))),
                   SizedBox(height: TSizes.spaceBtwSections),

                   /// Description
                   TSectionHeading(title: 'Description',showActionButton: false),
                   SizedBox(height: TSizes.spaceBtwItems),

                   ReadMoreText(
                     'This is a product description for blue Nike Sleeve less vest. There are more things that can be addded to this decription as i want to check this widget if its working or not so let\'s test it out...',
                     trimLines: 2,
                     trimMode: TrimMode.Line,
                     trimCollapsedText: "Show more",

                     trimExpandedText: "Show less",
                     moreStyle: TextStyle(fontSize:  14, fontWeight: FontWeight.w800),
                     lessStyle: TextStyle(fontSize:  14, fontWeight: FontWeight.w800),
                   ),
                  
                   /// Reviews
                   Divider(),
                   SizedBox(height: TSizes.spaceBtwItems),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       TSectionHeading(title: 'Reviews(199)',showActionButton: false),
                       IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_3,size: 18)),
                     ],
                   ),
                   SizedBox(height: TSizes.spaceBtwSections),

                 ],
               ),

            ),

          ],
        ),
      ),
    );
  }
}




