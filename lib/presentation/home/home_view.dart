import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../infrastructure/navigation/routes.dart';
import 'controllers/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chuck!'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.handleRetryTap();
        },
        child: RotationTransition(
          turns: CurveTween(curve: Curves.fastOutSlowIn).animate(controller.retryAnimationController),
          child: Icon(Icons.restart_alt),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => controller.isLoading.value
                  ? Container(width: double.infinity, height: 100, child: Center(child: CircularProgressIndicator()))
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24.0),
                      child: Text(
                        controller.isError.value
                            ? "Error :("
                            : controller.currentJoke.value.value ?? "By some reason joke don't exist :O",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
            ),
            OutlinedButton(
                onPressed: () {
                  Get.toNamed(Routes.SECOND_SCREEN, arguments: controller.currentJoke.value)
                      ?.then((value) => controller.getRandomJoke());
                },
                child: Text("Go to second screen!"))
          ],
        ),
      ),
    );
  }
}
