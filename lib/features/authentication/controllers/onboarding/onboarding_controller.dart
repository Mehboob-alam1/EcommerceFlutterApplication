import 'package:get/get.dart';

class OnBoardingController extends GetxController {

 static OnBoardingController get instance => Get.find();

  /// Variables


  /// update current index when it scrolls

  void updatePageIndicator(index) {}

  ///Jump ot specific dot selected page

  void dotNavigationClick(index) {}

  /// Update current index and jump to next page

  void nextPage() {}

  /// Update current index and jump to the last page

  void skipPage() {}
}
