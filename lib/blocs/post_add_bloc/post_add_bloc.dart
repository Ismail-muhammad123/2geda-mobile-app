import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'post_add_event.dart';
part 'post_add_state.dart';

class PostAddBloc extends Bloc<PostAddEvent, PostAddState> {
  PostAddBloc() : super(PostAddInitial()) {
    on<PostAddEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
