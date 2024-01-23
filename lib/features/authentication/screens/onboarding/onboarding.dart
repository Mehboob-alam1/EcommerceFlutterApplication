import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller =Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
                image: TImages.onBoardingImage1,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
                image: TImages.onBoardingImage2,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
                image: TImages.onBoardingImage3,
              ),
            ],
          ),

          ///Skip Button

          const OnBoardingSkip(),

          ///Dot Navigation SmoothPageIndicator

          const OnBoardingDotNavigation(),

          ///Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}

