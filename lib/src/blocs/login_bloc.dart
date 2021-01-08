import 'dart:async';

class LoginBloc {
  final _emailController = StreamController
      .broadcast(); // broadcast para que multiples instancias puedan escuchar sus cambios
  final _passwordController = StreamController
      .broadcast(); // broadcast para que multiples instancias puedan escuchar sus cambios

  // Recuperar los datos del Stream
  Stream<String> get emailStream => _emailController.stream;
  Stream<String> get passwordStream => _passwordController.stream;

  // Insertar valores al Stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}
