import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/fourth_screen.dart';
import 'pages/one/view/screen_one.dart';
import 'pages/third_screen.dart';
import 'pages/two/view/screen_two.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: const ScreenOne(),
      getPages: [
        GetPage<ScreenOne>(
          name: '/',
          page: () => const ScreenOne(),
        ),
        GetPage<ScreenTwo>(
          name: '/screenTwo',
          page: () => const ScreenTwo(),
        ),
        GetPage<ScreenThird>(
          name: '/screenThird',
          page: () => const ScreenThird(),
        ),
        GetPage<ScreenFourth>(
          name: '/screenFourth',
          page: () => const ScreenFourth(),
        ),
      ],
      initialRoute: '/',
    );
  }
}
