import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';


class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? TColors
          .darkerGrey : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [

          /// Icon
          Positioned(
              right: 5,
              top: 0,
              child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                  color: selectedAddress
                      ? dark ? TColors.light : TColors.dark
                      : null)),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('John Doe',
                maxLines: 2, overflow: TextOverflow.ellipsis, style:Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: TSizes.sm/2),
              const Text('+92 317 1981460',maxLines: 1,overflow: TextOverflow.ellipsis),
              const SizedBox(height: TSizes.sm/2),
              const Text('1650 E Old Badillo St , Covina, California , US ',softWrap: true),

            ],
          )

        ],

      ),
    );
  }
}
