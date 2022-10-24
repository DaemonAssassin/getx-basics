import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basics/GetxImpl-Routing/pages/fourth_screen.dart';

class ScreenThird extends StatelessWidget {
  const ScreenThird({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint(Get.arguments ?? 'No Data');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is Screen 3'),
            ElevatedButton(
              onPressed: () {
                // Get.off(() => const ScreenTwo());
                navigator?.push(MaterialPageRoute(
                  builder: (context) => const ScreenFourth(),
                ));
              },
              child: const Text('Go To Screen 4 With Named Data'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(() => const ScreenFourth());
                // navigator?.pushAndRemoveUntil(
                //   MaterialPageRoute(
                //     builder: (context) => const ScreenFourth(),
                //   ),
                //   (route) => false,
                // );
              },
              child: const Text('Go To Screen 4 and close All'),
            ),
          ],
        ),
      ),
    );
  }
}
