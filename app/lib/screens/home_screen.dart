import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/post_bloc.dart';
import '../models/post_model.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          // Verifica si las publicaciones están cargadas
          if (state.posts.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            // Muestra la lista de publicaciones
            return ListView.builder(
              itemCount: state.posts.length,
              itemBuilder: (context, index) {
                final post = state.posts[index];
                return ListTile(
                  title: Text(post.username),
                  subtitle: Text(post.caption),
                  // Otros detalles del post...
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Agrega aquí la lógica para agregar nuevas publicaciones si es necesario
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
