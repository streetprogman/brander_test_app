import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/second_screen_controller.dart';

class SecondScreenView extends GetView<SecondScreenController> {
  const SecondScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivering joke!'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
            child: Text(
              controller.currentJoke.value ?? "Strange but joke is not delivered :(",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          OutlinedButton(onPressed: () => Get.back(), child: Text("Return to home screen"))
        ],
      ),
    );
  }
}
