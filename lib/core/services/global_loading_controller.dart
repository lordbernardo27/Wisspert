import 'package:flutter/foundation.dart';

class GlobalLoadingController {
  GlobalLoadingController._();

  static final GlobalLoadingController instance = GlobalLoadingController._();

  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);

  void show() {
    if (!isLoading.value) {
      isLoading.value = true;
    }
  }

  void hide() {
    if (isLoading.value) {
      isLoading.value = false;
    }
  }

  void dispose() {
    isLoading.dispose();
  }
}
