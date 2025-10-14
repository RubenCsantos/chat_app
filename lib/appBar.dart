import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar() {
  return AppBar(
    title: const Text('Just Chatting App'),
    backgroundColor: Colors.blue.shade400,
    foregroundColor: Colors.white,
    centerTitle: true,
  );
}
