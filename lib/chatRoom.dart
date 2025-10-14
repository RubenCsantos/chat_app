import 'package:chat_app/appBar.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key});

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  final List<String> messages = [
    'Olá, tudo bem',
    'Sim, e contigo?\nTest',
    'Nunca pior!',
    'Hahaha 😂',
    'Hahaha 😂',
    'Hahaha 😂',
    'Hahaha 😂',
    'Hahaha 😂',
    'Hahaha 😂',
    'Hahaha 😂',
    'Hahaha 😂',
    'Hahaha 😂',
    'Hahaha 😂',
    'Hahaha 😂',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: messages.length,
                itemBuilder: (context, index) => Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Colors.blue[50],
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 25),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              leading: const CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage('assets/ruben.png'),
                              ),
                              title: Text(
                                messages[index],
                                style: const TextStyle(
                                    fontFamily: 'Roboto', fontSize: 18),
                              ))),
                    )),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      color: Color.fromARGB(255, 0, 63, 114),
                    ),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      hintText: 'Write a message...',
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
                IconButton(
                    onPressed: () => print('Teste'),
                    icon: const Icon(Icons.send_rounded),
                    color: Color.fromARGB(255, 0, 63, 114))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
