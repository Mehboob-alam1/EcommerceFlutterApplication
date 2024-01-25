import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';


class TCarrContainerIcon extends StatelessWidget {
  const TCarrContainerIcon({
    super.key, required this.iconColor, required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon:  Icon(Icons.shopping_bag,color: iconColor)),
        Positioned(
          right:0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: TColor.black,
                borderRadius: BorderRadius.circular(18)
            ),
            child: Center(
              child: Text("2",style: Theme.of(context).textTheme.labelLarge!.apply(color: TColor.white,fontSizeFactor: 0.7)),
            ),
          ),
        )
      ],
    );
  }
}