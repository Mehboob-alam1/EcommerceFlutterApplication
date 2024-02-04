import 'package:ecommerce/features/shop/screens/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';


class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,  this.iconColor, required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: ()=>Get.to(()=>const CartScreen()), icon:  Icon(Icons.shopping_bag,color: iconColor)),
        Positioned(
          right:0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: TColors.black,
                borderRadius: BorderRadius.circular(18)
            ),
            child: Center(
              child: Text("2",style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white,fontSizeFactor: 0.7)),
            ),
          ),
        )
      ],
    );
  }
}