import 'dart:ui';
import 'package:get/get.dart';

class AppTranslationController extends GetxController {
  void changeLanguage(String langCode, String countryCode) {
    Get.updateLocale(Locale(langCode, countryCode));
  }
}
