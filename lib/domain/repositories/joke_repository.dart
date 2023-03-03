import '../../data/models/joke_model.dart';

abstract class IJokeRepository {
  Future<JokeModel> getRandomJoke();
}
