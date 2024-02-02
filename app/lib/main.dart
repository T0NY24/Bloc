import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/post_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<PostBloc>(
            create: (context) => PostBloc(),
          ),
          // Agrega más providers según sea necesario
        ],
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter BLoC Example'),
      ),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          // Ahora puedes acceder al PostBloc desde este contexto
          return Center(
            child: Text('Número de publicaciones: ${state.posts.length}'),
          );
        },
      ),
    );
  }
}
