import 'dart:convert';
import 'package:http/http.dart' as http;

class MusicApi {
  getMusics() async {
    final response =
        await http.get(Uri.parse("http://laravel-10.my.id/api/musics"));
    return json.decode(response.body);
  }

  findMusics(q) async {
    final response =
        await http.get(Uri.parse("http://laravel-10.my.id/api/music/$q"));
    return json.decode(response.body);
  }

  getMusicTrends() async {
    final response =
        await http.get(Uri.parse("http://laravel-10.my.id/api/music/trend"));
    return json.decode(response.body);
  }

  findMusicTrends(q) async {
    final response =
        await http.get(Uri.parse("http://laravel-10.my.id/api/music/trend/$q"));
    return json.decode(response.body);
  }
}
