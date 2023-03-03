import '../../domain/entites/joke.dart';

class JokeModel extends Joke {
  JokeModel() : super();

  JokeModel.fromJson(Map<String, dynamic> json) {
    iconUrl = json['icon_url'];
    id = json['id'];
    url = json['url'];
    value = json['value'];
  }
}
