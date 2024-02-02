# Bloc2e 
Flutter BLoC Example
Este proyecto es un ejemplo simple de cómo implementar la arquitectura BLoC (Business Logic Component) en una aplicación Flutter para gestionar el estado de una lista de publicaciones. La aplicación incluye funcionalidades básicas como agregar, ver detalles y eliminar publicaciones.

Instalación
Para ejecutar este proyecto, sigue estos pasos:

Asegúrate de tener Flutter instalado en tu sistema.
Clona este repositorio o descárgalo como ZIP.
Abre una terminal en la carpeta del proyecto y ejecuta flutter pub get para instalar las dependencias.
Ejecuta la aplicación con flutter run.
Estructura del Proyecto
La estructura del proyecto se organiza en varias carpetas:

bloc: Contiene el BLoC (PostBloc) responsable de gestionar el estado de la aplicación.
models: Incluye el modelo de datos Post que representa una publicación.
screens: Contiene las pantallas principales de la aplicación, como la pantalla de inicio (MyHomePage), la pantalla de detalles (PostDetailsScreen), y la pantalla de creación (CreatePostScreen).
Arquitectura BLoC
La arquitectura BLoC se utiliza para separar la lógica de negocio del estado de la interfaz de usuario. En este ejemplo, el PostBloc maneja la lista de publicaciones y emite cambios en el estado a medida que se realizan operaciones como agregar o eliminar publicaciones.

Pantallas Principales
Home_screen
La pantalla principal muestra la lista de publicaciones. Cada elemento de la lista incluye el título y la descripción de la publicación. Al tocar un elemento, se abre la pantalla de detalles. Mantén presionado un elemento para eliminar la publicación.

Contribuir
Siéntete libre de contribuir al proyecto proponiendo mejoras, solucionando problemas o agregando nuevas funcionalidades. ¡Estamos abiertos a colaboraciones!

Conclusiones
Este ejemplo simple destaca la implementación básica de la arquitectura BLoC en Flutter para gestionar el estado de una lista de publicaciones. Puedes expandir y personalizar este proyecto según tus necesidades específicas. ¡Esperamos que encuentres útil este ejemplo de Flutter BLoC!