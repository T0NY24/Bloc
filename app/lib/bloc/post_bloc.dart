import 'package:bloc/bloc.dart';
import '../models/post_model.dart';

class PostState {
  final List<Post> posts;

  PostState(this.posts);
}

class PostEvent {}

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostState([]));

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    // No hay eventos específicos para manejar en este ejemplo,
    // pero puedes agregar lógica de manejo de eventos aquí si es necesario.
  }
}
