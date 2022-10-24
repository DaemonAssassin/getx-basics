import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basics/CounterApp/models/counter.dart';
import 'package:getx_basics/CounterApp/screens/other_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put<Controller>(Controller());
    log('build');
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(controller.count.toString())),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => const OtherScreen(), transition: Transition.upToDown);
          },
          child: const Text('Go To Other'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
      ),
    );
  }
}
