import 'package:brander_test_app/domain/repositories/joke_repository.dart';

import '../../data/models/joke_model.dart';

class GetRandomJokeUseCase {
  final IJokeRepository _jokeProvider;

  GetRandomJokeUseCase(this._jokeProvider);

  Future<JokeModel> execute() async {
    return await _jokeProvider.getRandomJoke();
  }
}
