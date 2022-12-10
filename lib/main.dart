import 'package:flutter/material.dart';
import 'package:slice_ui_whatsapp/main_pages_viewer.dart';

import 'my_pages_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MainPagesViewer contohTabBar = const MainPagesViewer();
    // ignore: unused_local_variable
    MyPagesView contohTabBar2= const MyPagesView();//*Widget dengan DefaultTabController
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: contohTabBar,
    );
  }
}

