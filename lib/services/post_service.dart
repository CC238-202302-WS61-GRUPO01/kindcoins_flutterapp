import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kindcoins_flutterapp/services/api_service.dart';
import 'package:kindcoins_flutterapp/models/post_model.dart';
import 'package:kindcoins_flutterapp/models/post_request.dart';

class PostService {
  final String apiUrl;

  int? userId = getUserId();
  PostService(this.apiUrl);

  Future<List<Post>> fetchAllPosts() async {
    final response = await http.get(Uri.parse('https://kindcoins-api.azurewebsites.net/api/v1/post'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      List<Post> posts = data.map((json) => Post.fromJson(json)).toList();
      return posts;
    } else {
      throw Exception('Error al cargar los posts');
    }
  }

  Future<List<Post>> fetchUserPosts() async {
    final List<Post> allPosts = await fetchAllPosts();
    final userPosts = allPosts.where((post) => post.userId == userId).toList();
    return userPosts;
  }

  Future<Post> fetchSingleUserPosts(int postId) async {
    final List<Post> userPosts = await fetchUserPosts();
    final singlePost = userPosts.firstWhere((post) => post.id == postId);
    return singlePost;
  }

  Future<Post> createPost(PostRequest post) async {
    print(post.toString());

    final response = await http.post(
        Uri.parse('https://kindcoins-api.azurewebsites.net/api/v1/post'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(post));

    if (response.statusCode == 200) {
      final createdPost = Post.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      return createdPost;
    } else {
      throw Exception('Error al crear el post');
    }
  }
}
