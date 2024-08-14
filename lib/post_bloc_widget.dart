
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/counter/bloc/counter_bloc.dart';
import 'package:udemy_flutter/counter/bloc/counter_event.dart';
import 'package:udemy_flutter/counter/counter_provider.dart';
import 'package:udemy_flutter/data/repository/post_repository.dart';
import 'package:udemy_flutter/posts/bloc/post_bloc.dart';

class PostBlocWidget extends StatelessWidget {
  const PostBlocWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider<PostBloc>(
          create: (context) => PostBloc(PostRepository())..add(const FetchPosts()),
          child: const Main(),
        ),
        debugShowCheckedModeBanner: false,
    );
  }
}
class Main extends StatelessWidget {
  const Main({super.key});


  @override
  Widget build(BuildContext context) {
    
  return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body:  Center(
        child: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
           if (state is PostLoading || state is PostInitial) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is PostLoaded) {
              return ListView.builder(
                itemCount: state.posts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.posts[index].title),
                    subtitle: Text(state.posts[index].body),
                  );
                },
              );
            } else if (state is PostError) {
              return const Center(
                child: Text('An error happened'),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        )
      )
    );
  }
} 