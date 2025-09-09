import 'dart:developer';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  final IO.Socket _socket;

  SocketService()
    : _socket = IO.io(
        dotenv.get('SOCKET_IO_DOMAIN_URL'),
        IO.OptionBuilder().setTransports(['websocket']).setAuth({
          'apiKey': dotenv.get('API_KEY'),
        }).build(),
      );

  void connect({required int userId, required String type}) {
    _socket.connect();
    _socket.onConnect((_) {
      log('🔌 Connected: ${_socket.id}');
      emit('register', {'user_id': userId, 'type': type});
    });

    _socket.onDisconnect((_) {
      log('❌ Disconnected');
    });

    _socket.onConnectError((err) => log('⚠️ Connect error: $err'));
    _socket.onError((err) => log('🚨 Socket error: $err'));
  }

  void disconnect() {
    _socket.clearListeners();
    _socket.dispose();
    log('🔌 Socket manually disconnected');
  }

  void on(String event, Function(dynamic data) handler) {
    _socket.on(event, handler);
  }

  void off(String event) {
    _socket.off(event);
  }

  void emit(String event, dynamic data) {
    _socket.emit(event, data);
  }
}
