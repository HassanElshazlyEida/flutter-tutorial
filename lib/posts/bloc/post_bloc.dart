import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:udemy_flutter/data/model/post.dart';
import 'package:udemy_flutter/data/repository/post_repository.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository postRepository;
  PostBloc(this.postRepository) : super(PostInitial()) {

    on<PostEvent>((event, emit) async {
      switch (event.runtimeType) {
        case FetchPosts:
          emit(PostLoading());
          try{
            final posts = await postRepository.fetchPosts();
            emit(PostLoaded(posts));
          } catch(e){
            emit(PostError(e.toString()));
          }
          break;
        default:
          emit(const PostError("Unknown event"));
      }
    });
  }
}
