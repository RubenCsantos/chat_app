import 'package:chat_app/changeAvatar.dart';
import 'package:chat_app/chatRoom.dart';
import 'package:flutter/material.dart';

class Beforechatroom extends StatefulWidget {
  const Beforechatroom({super.key});

  @override
  State<Beforechatroom> createState() => _BeforechatroomState();
}

class _BeforechatroomState extends State<Beforechatroom> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
      );
  }
}