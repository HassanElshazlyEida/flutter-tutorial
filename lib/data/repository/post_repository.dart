import 'dart:convert';
import 'package:http/http.dart';
import 'package:udemy_flutter/data/model/post.dart';

abstract class PostRepository {
  Future<List<Post>> fetchPosts();
}

class FakePostRepository extends PostRepository {
  @override
  Future<List<Post>> fetchPosts() async {
    final response = await get('https://jsonplaceholder.typicode.com/posts');
    if(response.statusCode == 200){
      final List<dynamic> posts = jsonDecode(response.body);
      return posts.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}