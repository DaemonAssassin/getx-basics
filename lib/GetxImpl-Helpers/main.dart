import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
//! dialog, snackbar, bottomSheet

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Builder(
          builder: (context) {
            return Center(
              child: Column(
                children: [
                  showSnackbarButton(),
                  const SizedBox(height: 16.0),
                  showDialogButton(),
                  const SizedBox(height: 16.0),
                  showBottomSheetButton(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget showSnackbarButton() {
    return ElevatedButton(
      onPressed: () {
        Get.snackbar(
          'Delete',
          'You message is deleted.',
          snackPosition: SnackPosition.BOTTOM,
          icon: const Icon(Icons.cookie),
          shouldIconPulse: true,
          showProgressIndicator: true,
        );
      },
      child: const Text('Snackbar'),
    );
  }

  Widget showDialogButton() {
    return ElevatedButton(
      onPressed: () {
        // Get.dialog(Container(
        //   height: 200.0,
        //   color: Colors.pink,
        //   child: const Text('Hello'),
        // ));
        // Get.generalDialog(pageBuilder: )
        Get.defaultDialog();
      },
      child: const Text('Dialog'),
    );
  }

  Widget showBottomSheetButton() {
    return ElevatedButton(
      onPressed: () {
        Get.bottomSheet(Container(
          color: Colors.green,
        ));
      },
      child: const Text('Bottom Sheet'),
    );
  }
}
