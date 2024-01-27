import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/features/shop/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';


class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;


  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
       onPageChanged: (index, _)=> controller.updatePageIndicator(index)
          ),
          items: banners.map((url) => TRoundedImage(imageUrl: url)).toList(),

        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Obx(
          ()=> Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
              for(int i=0;i<banners.length;i++)
                 TCircularContainer(width: 20, height: 4, margin: const EdgeInsets.only(right: 10),backgroundColor:controller.carousalCurrentIndex.value==i? TColor.primary: TColor.grey),
          
            ],
          ),
        ),


      ],
    );
  }
}