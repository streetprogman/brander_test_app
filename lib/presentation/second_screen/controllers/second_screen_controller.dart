import 'package:brander_test_app/data/models/joke_model.dart';
import 'package:get/get.dart';

class SecondScreenController extends GetxController {
  var currentJoke = JokeModel();
  @override
  void onInit() {
    currentJoke = Get.arguments;
    super.onInit();
  }
}
