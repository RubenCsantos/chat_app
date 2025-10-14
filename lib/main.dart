import 'package:chat_app/appBar.dart';
import 'package:chat_app/changeAvatar.dart';
import 'package:chat_app/chatRoom.dart';
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
      body: SingleChildScrollView(   //super importante para nao dar overflow na tela e teclado esconder elementos
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 180),
          const ChangeAvatar(), //Change Avatar class
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Roboto',
                color: Color.fromARGB(255, 0, 63, 114),
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                hintText: 'Username',
                hintStyle: TextStyle(color: Colors.blueGrey.shade100),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 0, 63, 114),
                      width: 1,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatRoom())),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 63, 114),
                  foregroundColor: const Color.fromARGB(255, 0, 63, 114),
                ),
                child: const Text(
                  'Join the chat room',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                )),
          )
        ],
      ),
      )
    );
  }
}
