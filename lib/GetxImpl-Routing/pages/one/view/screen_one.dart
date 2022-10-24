import 'dart:developer';

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
                Get.to(() => const ScreenTwo());

                //? 2nd way
                // navigator?.push(
                //   MaterialPageRoute(
                //     builder: (context) => const ScreenTwo(),
                //   ),
                // );
              },
              child: const Text('Go To Screen 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/screenTwo');
              },
              child: const Text('Go To Screen 2 With Named'),
            ),
            ElevatedButton(
              onPressed: () async {
                String? data = await Get.to<String>(() => const ScreenTwo());
                debugPrint(data ?? 'No Data Came Back');
              },
              child: const Text('Go To Screen 2 And Get Data Back'),
            ),
            ElevatedButton(
              onPressed: () async {
                var data = await Get.toNamed('/screenTwo');
                log(data.runtimeType.toString());
                debugPrint(data);
              },
              child: const Text('Go To Screen 2 And Get Data Back'),
            ),
          ],
        ),
      ),
    );
  }
}
