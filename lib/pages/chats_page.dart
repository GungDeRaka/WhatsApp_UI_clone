import 'package:flutter/material.dart';
import 'package:slice_ui_whatsapp/model/chats_history.dart';
import 'package:slice_ui_whatsapp/widgets/versatile_listtile.dart';

class MyChatsPage extends StatelessWidget {
  const MyChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 8,right: 12) ,
        children: myChatsHistory.map((chatData) {
          return VersatileListTile(
              leadingTile: CircleAvatar(
                radius: 40,
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
              tileTitle: chatData["contactName"].toString(),
              tileSubtitle: Text(chatData["latestChat"].toString(),
              style: const TextStyle(
              fontSize: 14.0,
              ),
              ),
              trailingTile: Text(
              chatData["sentOn"].toString(),
              style: const TextStyle(
                fontSize: 10.0,
              ),
            ),);
        }).toList(),
      ),
      
    );
  }
}
