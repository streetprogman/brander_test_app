import 'package:dio/dio.dart';

import '../../domain/repositories/joke_repository.dart';
import '../models/joke_model.dart';

class JokeRepository implements IJokeRepository {
  @override
  Future<JokeModel> getRandomJoke() async {
    var response = await Dio().get("https://api.chucknorris.io/jokes/random");
    return JokeModel.fromJson(response.data);
  }
}
