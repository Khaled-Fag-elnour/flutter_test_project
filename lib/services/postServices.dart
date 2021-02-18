import 'package:day1_flutter_app/models/post.dart';
import 'package:dio/dio.dart';

class PostService {
  String url = 'https://jsonplaceholder.typicode.com/posts?userId=1';
  Future<List<Post>> getPosts() async {
    List<Post> posts = new List();
    var dio = Dio();
    Response response = await dio.get(url);
    var data = response.data;
    data.forEach((value) {
      posts.add(Post.fromJson(value));
    });
    print(data);
    return posts;
  }
}
