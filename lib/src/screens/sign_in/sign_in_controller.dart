import 'package:get/get.dart';

import '../../../core/constants/app_routes.dart';

class SignInController extends GetxController {
  final login = ''.obs;
  final password = ''.obs;
  final isLoading = false.obs;

  RxBool get isButtonEnabled => (login.isNotEmpty && password.isNotEmpty).obs;

  Future<void> continuePressed() async {
    if (isLoading.value) return;
    isLoading.value = true;
    await Future.delayed(2.seconds);
    isLoading.value = false;
    Get.toNamed(AppRoutes.home);
  }
}
