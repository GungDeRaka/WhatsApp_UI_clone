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
              tileTitle: chatData["contactName"].toString(),
              tileSubtitle: chatData["latestChat"].toString(),
              trailingTile: Text(
              chatData["sentOn"].toString(),
              style: const TextStyle(
                fontSize: 10.0,
              ),
            ),);
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.chat),
        onPressed: () {
          //
        },
      ),
    );
  }
}
// ListTile(
//             contentPadding: const EdgeInsets.symmetric(horizontal: 2),
//             onTap: () {},
//             horizontalTitleGap: 0,
//             title: Text(
//               chatData["contactName"].toString(),
//               style:
//                   const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
//             ),
//             subtitle: Text(
//               chatData["latestChat"].toString(),
//               style: const TextStyle(
//                 fontSize: 12.0,
//               ),
//             ),
            
//             leading: CircleAvatar(
//               radius: 50,
//               backgroundColor: Colors.grey[400],
//               child: const Padding(
//                 padding: EdgeInsets.only(top: 8),
//                 child: Icon(
//                   Icons.person_rounded,
//                   size: 48.0,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             trailing: Text(
//               chatData["sentOn"].toString(),
//               style: const TextStyle(
//                 fontSize: 10.0,
//               ),
//             ),
//           );
