import 'package:flutter/material.dart';
import 'package:slice_ui_whatsapp/widgets/versatile_listtile.dart';



class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 8),
        children: [
          VersatileListTile(
              leadingTile: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: const [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      "assets/profile_picture1.jpg",
                    ),
                  ),
                  Positioned(
                    right: 12,
                    bottom: 1,
                    child: CircleAvatar(
                      child: Icon(
                        Icons.add,
                        size: 16,
                      ),
                      radius: 12,
                    ),
                  )
                ],
              ),
              tileTitle: "My Status",
              tileSubtitle: "Tap to add status update"),
          SizedBox(
            height: 12,
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.grey[300],
            mini: true,
            child: Icon(Icons.create, color: Colors.grey[800]),
            onPressed: () {
              //
            },
          ),
          SizedBox(
            height: 12,
          ),
          FloatingActionButton(
            child: const Icon(Icons.camera_alt),
            onPressed: () {
              //
            },
          ),
        ],
      ),
    );
  }
}
