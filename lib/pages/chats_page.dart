import 'package:flutter/material.dart';
import 'package:slice_ui_whatsapp/model/chats_history.dart';

class MyChatsPage extends StatelessWidget {
  const MyChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: myChatsHistory.map((chatData) {
          return SizedBox(
              child: ListTile(
                horizontalTitleGap: 0,
            title: Text(
              chatData["contactName"].toString(),
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              chatData["latestChat"].toString(),
              style: const TextStyle(
                fontSize: 12.0,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 4),
            onTap: () {},
            leading: CircleAvatar(
                radius: 50, backgroundImage: chatData["profileIMage"]),
            trailing: Text(
              chatData["sentOn"].toString(),
              style: const TextStyle(
                fontSize: 10.0,
              ),
            ),
          ));
        }).toList(),
      ),
      floatingActionButton: 
      
      FloatingActionButton(
        
        child: const Icon(Icons.chat),
        onPressed: () {
          //
        },
      ),
    );
  }
}
