import 'package:flutter/material.dart';

import 'pages/calls_page.dart';
import 'pages/chats_page.dart';
import 'pages/status_page.dart';


class MyPagesView extends StatefulWidget {
  const MyPagesView({super.key});

  @override
  State<MyPagesView> createState() => _MyPagesViewState();
}

class _MyPagesViewState extends State<MyPagesView> {
  @override
  Widget build(BuildContext context) {
    //? dengan[DefaultTabController] mungkin akan memudahkan kita dalam membuat
    //? but, If you want some custom tab management, 
    //?use [TabController] instead. With [TabController] you have access to much more informations,
    //? including the current index.
    //? "https://stackoverflow.com/questions/50123354/how-to-get-current-tab-index-in-flutter"


    return DefaultTabController(
      initialIndex: 1,
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
          StatusPage(),
          CallsPage(),
        ]),
      ),
    );
  }
}