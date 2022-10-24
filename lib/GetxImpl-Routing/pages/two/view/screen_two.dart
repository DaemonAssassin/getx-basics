import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basics/GetxImpl-Routing/pages/third_screen.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is Screen 2'),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const ScreenThird());
              },
              child: const Text('Go To Screen 3'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  () => const ScreenThird(),
                  opaque: false,
                  curve: Curves.bounceInOut,
                  duration: const Duration(seconds: 2),
                  preventDuplicates: true,
                  routeName: 'ScreenThree',
                  transition: Transition.downToUp,
                  popGesture: true,
                  arguments: 'Hello World',
                );
              },
              child: const Text('Go To Screen 3 With Data'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/screenThird", arguments: 'Named Data here');
              },
              child: const Text('Go To Screen 3 With Data Named'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(() => const ScreenThird());
                // navigator?.pushReplacement(MaterialPageRoute(
                //   builder: (context) => const ScreenThird(),
                // ));
              },
              child: const Text('Go To Screen 3 And Close 2'),
            ),
          ],
        ),
      ),
    );
  }
}
