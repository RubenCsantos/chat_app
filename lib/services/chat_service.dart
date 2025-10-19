import 'dart:convert';

import 'package:stomp_dart_client/stomp_dart_client.dart';

class ChatService {
  late StompClient stompClient;
  final Function(String)? onMessageReceived;

  ChatService({this.onMessageReceived});

  void connect() {
    stompClient = StompClient(
        config: StompConfig(
      url: 'ws://10.0.2.2:8080/ws/websocket',
      onConnect: _onConnect,
      onWebSocketError: (error) => print('Erro WebSocket: $error'),
    ));

    stompClient.activate();
  }

  void _onConnect(StompFrame frame) {
    print('✅ Conectado ao WebSocket!');

    stompClient.subscribe(
        destination: '/topic/public',
        callback: (StompFrame frame) {
          if (frame.body != null) {
            print('📩 Nova mensagem: ${frame.body}');
            onMessageReceived?.call(frame.body!);
          }
        });
  }

  void sendMessage(String senderName, String content) {
    if (!stompClient.connected) return;

    stompClient.send(
      destination: '/app/chat.sendMessage',
      body: jsonEncode({
        'senderName': senderName,
        'content': content,
        'roomId': 'global'
      })
    );
  }

  void disconnect () {
    stompClient.deactivate();
  }
}
