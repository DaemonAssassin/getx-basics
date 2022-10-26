import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basics/GetXImpl-Internationalization/translation_controller.dart';
import 'package:getx_basics/GetXImpl-Internationalization/translations.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: HomeScreen(),
      initialBinding: BindingsBuilder(() {
        Get.put(AppTranslationController());
      }),
      translations: AppTranslations(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomeScreen(),
        ),
      ],
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('greet'.tr),
            const SizedBox(height: 16),
            Text('health'.trParams(
              {'name': 'Mateen'},
            )),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.find<AppTranslationController>().changeLanguage('en', 'US');
              },
              child: const Text(
                'English Us',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<AppTranslationController>().changeLanguage('ur', 'PK');
              },
              child: const Text(
                'Urdu',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<AppTranslationController>().changeLanguage('en', 'CA');
              },
              child: const Text(
                'English CA',
              ),
            )
          ],
        ),
      ),
    );
  }
}
