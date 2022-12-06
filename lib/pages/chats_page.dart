import 'package:flutter/material.dart';

class MyChatsPage extends StatefulWidget {
  const MyChatsPage({super.key});

  @override
  State<MyChatsPage> createState() => _MChatsPageState();
}

class _MChatsPageState extends State<MyChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
      ),
    );
  }
}
