import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basics/GetxImpl-Routing/pages/one/view/screen_one.dart';

class ScreenFourth extends StatelessWidget {
  const ScreenFourth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is Screen 4'),
            ElevatedButton(
              onPressed: () {
                Get.offAll(() => const ScreenOne());
              },
              child: const Text('Go To 1'),
            ),
          ],
        ),
      ),
    );
  }
}
