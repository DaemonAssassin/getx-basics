import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'greet': 'Good Morning',
          'health': 'How are you @name',
        },
        'en_CA': {
          'greet': 'Good Morning',
          'health': 'How are you @name',
        },
        'ur_PK': {
          'greet': 'صبح بخیر',
          'health': '@name کیسے ہو',
        },
      };
}
