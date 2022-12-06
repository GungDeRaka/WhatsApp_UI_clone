import 'package:flutter/material.dart';
import 'package:slice_ui_whatsapp/pages/chats_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyPagesView(),
    );
  }
}

class MyPagesView extends StatefulWidget {
  const MyPagesView({super.key});

  @override
  State<MyPagesView> createState() => _MyPagesViewState();
}

class _MyPagesViewState extends State<MyPagesView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                size: 24.0,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 24.0,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                size: 24.0,
              ),
            ),
            const SizedBox(
              width: 12,
            )
          ],
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.groups,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Tab(
                  text: "CHATS",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Tab(
                  text: "STATUS",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Tab(
                  text: "CALLS",
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Center(
            child: Text(
              "ComunityPage",
              style: TextStyle(fontSize: 28),
            ),
          ),
          MyChatsPage(),
          Center(
            child: Text(
              "StatusPage",
              style: TextStyle(fontSize: 28),
            ),
          ),
          Center(
            child: Text(
              "CallsPage",
              style: TextStyle(fontSize: 28),
            ),
          )
        ]),
      ),
    );
  }
}
