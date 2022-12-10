import 'package:flutter/material.dart';
import 'pages/calls_page.dart';
import 'pages/chats_page.dart';
import 'pages/status_page.dart';

class MainPagesViewer extends StatefulWidget {
  const MainPagesViewer({Key? key}) : super(key: key);

  @override
  State<MainPagesViewer> createState() => _MainPagesViewerState();
}

class _MainPagesViewerState extends State<MainPagesViewer>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4, initialIndex: 1);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          (_tabController.index == 0)
              ? const SizedBox()
              : IconButton(
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
        bottom: TabBar(
          onTap: (value) {
            setState(() {});
          },
          controller: _tabController,
          isScrollable: true,
          tabs: const [
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
      body: TabBarView(controller: _tabController, children: const [
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: (_tabController.index == 0)? []: [
          (_tabController.index == 2)?
          FloatingActionButton(
            backgroundColor: Colors.grey[300],
            mini: true,
            child: Icon(Icons.create, color: Colors.grey[800]),
            onPressed: () {
              //
            },
          ): const SizedBox(),
          const SizedBox(
            height: 12,
          ),
          FloatingActionButton(
            child: Icon((_tabController.index == 1)
                ? Icons.chat
                : (_tabController.index == 2)
                    ? Icons.camera_alt
                    : Icons.add_call),
            onPressed: () {
              //
            },
          ),
        ],
      ),
    );
  }
}
