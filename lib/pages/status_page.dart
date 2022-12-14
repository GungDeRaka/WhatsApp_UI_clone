import 'package:flutter/material.dart';
import 'package:slice_ui_whatsapp/model/chats_history.dart';
import 'package:slice_ui_whatsapp/widgets/versatile_listtile.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 8),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: VersatileListTile(
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
                      radius: 12,
                      child: Icon(
                        Icons.add,
                        size: 16,
                      ),
                    ),
                  )
                ],
              ),
              tileTitle: "My Status",
              tileSubtitle: const Text(
                "Tap to add status update",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "Viewed updates",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black45),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: myChatsHistory.map((status) {
              return VersatileListTile(
                leadingTile: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[400],
                  child: const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Icon(
                      Icons.person_rounded,
                      size: 48.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                tileTitle: status["contactName"].toString(),
                tileSubtitle: Text(
                  status["statusUploadedWhen"].toString(),
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              );
            }).toList(),
          )
        ],
      ),
      
    );
  }
}
