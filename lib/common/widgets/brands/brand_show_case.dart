import 'package:ecommerce/common/widgets/brands/t_brand_card.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';


class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;


  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      padding: const EdgeInsets.all(TSizes.md),
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [

          /// brand with products count
          const TBrandCard(showBorder: false),

          const SizedBox(height: TSizes.spaceBtwItems),
          ///brand top 3 product images


          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
          ),

        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(TSizes.md),
        margin: const EdgeInsets.only(right: TSizes.sm),
        backgroundColor: THelperFunctions.isDarkMode(context)? TColors.darkerGrey : TColors.light,
        child:   Image(fit: BoxFit.contain,image: AssetImage(image)),
      ),
    );
  }
}