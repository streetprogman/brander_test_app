import 'package:brander_test_app/domain/repositories/joke_repository.dart';
import 'package:dio/dio.dart';

import '../../models/joke_model.dart';

class JokeProviderAPI implements IJokeRepository {
  @override
  Future<JokeModel> getRandomJoke() async {
    var response = await Dio().get("https://api.chucknorris.io/jokes/random");
    return JokeModel.fromJson(response.data);
  }
}
