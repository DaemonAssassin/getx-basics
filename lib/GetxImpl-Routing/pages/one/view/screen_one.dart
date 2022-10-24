import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basics/GetxImpl-Routing/pages/two/view/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is Screen 1'),
            ElevatedButton(
              onPressed: () {
                // Get.off(() => const ScreenTwo());
                navigator?.push(MaterialPageRoute(
                  builder: (context) => const ScreenTwo(),
                ));
              },
              child: const Text('Go To Screen 2'),
            ),
          ],
        ),
      ),
    );
  }
}
