import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:reddit_posts/models/post_model.dart';

class PostService {
  final String url = 'https://www.reddit.com/r/flutterdev/top.json?count=20';
  Future<PostModel> getPostsApi() async {
    var response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return PostModel.fromJson(data);
    } else {
      return PostModel.fromJson(data);
    }
  }
}