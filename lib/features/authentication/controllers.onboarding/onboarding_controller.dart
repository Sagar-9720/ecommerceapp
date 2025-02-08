import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  /// Variable
  /// Update Current Index when page start
  void updatePageIndicator(index) {}

  /// Jump to the specific dot selected page
  void dotNavigationClick(index) {}

  /// Update Current Index & jump to next page
  void nextPage() {}

  /// Update Current Index & jump to the last Page
  void skipPage() {}
}
