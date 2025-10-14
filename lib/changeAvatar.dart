import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChangeAvatar extends StatefulWidget {
  const ChangeAvatar({super.key});

  @override
  State<ChangeAvatar> createState() => _ChangeAvatarState();
}

class _ChangeAvatarState extends State<ChangeAvatar> {
  File? _avatarImage;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null){
      setState(() {
        _avatarImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: _avatarImage != null
                  ? FileImage(_avatarImage!) as ImageProvider
                  : const AssetImage('assets/ruben.png')
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: _pickImage,
                child: const Text(
                'Change avatar?',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 11,
                  color: Color.fromARGB(255, 0, 63, 114),
                ),
              ),
              )
            ],
          );
  }
}