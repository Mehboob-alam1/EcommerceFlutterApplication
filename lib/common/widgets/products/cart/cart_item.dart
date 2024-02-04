import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/t_rounded_image.dart';
import '../../text/t_brand_title_text.dart';
import '../../text/t_brand_title_text_with_verfied_icon.dart';


class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TRoundedImage(imageUrl: TImages.productImage1,
            width: 60,
            height: 60,
            padding:const EdgeInsets.all(TSizes.sm),
            backgroundColor: THelperFunctions.isDarkMode(context)?TColors.darkerGrey : TColors.light
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        /// Title price and size

        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(child: TBrandTitleText(title: 'Black Sports Shoes ',maxLines: 1)),
              Text.rich(

                  TextSpan(

                      children: [
                        TextSpan(text: 'Color ',style: Theme.of(context).textTheme.bodySmall),

                        TextSpan(text: 'Green ',style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: 'Size ',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'UK 08 ',style: Theme.of(context).textTheme.bodyLarge),
                      ]
                  )
              )
            ],
          ),
        )

      ],
    );
  }
}