import 'package:brander_test_app/data/providers/network/joke_provider_api.dart';
import 'package:get/get.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut(() => JokeProviderAPI());
  }
}
