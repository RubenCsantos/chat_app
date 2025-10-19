import 'package:chat_app/appBar.dart';
import 'package:chat_app/beforeChatRoom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade400),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //main widget
      appBar: buildAppBar(),
      body: const SingleChildScrollView(   //super importante para nao dar overflow na tela e teclado esconder elementos
        padding: EdgeInsets.only(bottom: 20),
        child: Beforechatroom(),
      )
    );
  }
}
