import 'package:dio/dio.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import '../../../data/models/joke_model.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  var isLoading = false.obs;
  var isError = false.obs;
  var dio = Dio();
  var currentJoke = JokeModel().obs;
  late AnimationController retryAnimationController;
  @override
  void onInit() {
    retryAnimationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 1),
    );
    getRandomJoke();
    super.onInit();
  }

  void handleRetryTap() {
    getRandomJoke();
    retryAnimationController.forward().then((value) => retryAnimationController.reset());
  }

  Future<void> getRandomJoke() async {
    try {
      isLoading(true);
      isError(false);
      var response = await dio.get("https://api.chucknorris.io/jokes/random");
      currentJoke(JokeModel.fromJson(response.data));
    } catch (err) {
      isError(true);
      print(err);
      Get.snackbar("Oops!", "Error occurred while getting joke, please try again!");
    } finally {
      isLoading(false);
    }
  }
}
