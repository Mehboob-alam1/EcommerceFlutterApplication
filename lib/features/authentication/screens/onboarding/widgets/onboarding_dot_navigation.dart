import 'package:ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller=OnBoardingController.instance;
    final dark=  THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(

        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect:  ExpandingDotsEffect(
          activeDotColor: dark? TColor.light:TColor.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
