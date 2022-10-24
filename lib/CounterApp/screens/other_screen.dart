import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basics/CounterApp/models/counter.dart';

class OtherScreen extends StatelessWidget {
  const OtherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.find<Controller>();
    return Scaffold(
      body: Center(
        child: Text(controller.count.toString()),
      ),
    );
  }
}
