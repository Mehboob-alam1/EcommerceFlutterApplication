import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/images/t_circular_image.dart';
import '../../../../../common/widgets/text/t_brand_title_text_with_verfied_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, required this.showBorder,
  });


  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            ///---Icon
            Flexible(
              child: TCircularImage(
                isNetworkImage:false,
                image: TImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
              ),
            ),

            const SizedBox(width: TSizes.spaceBtwItems /2),

            ///--Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const TBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.large),
                  Text('256 Products',overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.labelMedium,)

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}