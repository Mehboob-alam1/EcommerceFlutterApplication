import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/text/section_heading.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address',buttonTitle: 'Change',onPressed: (){}),
        Text('Mehboob Alam', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(Icons.phone,color: Colors.grey,size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('+92 317 1981460',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history,color: Colors.grey,size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('South Liana, Maine 87695, USA',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

      ],
    );
  }
}
