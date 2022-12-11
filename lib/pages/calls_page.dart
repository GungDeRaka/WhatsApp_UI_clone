import 'package:flutter/material.dart';

import '../model/chats_history.dart';
import '../widgets/versatile_listtile.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 8,right: 12,left: 4),
        children: [
          VersatileListTile(
              leadingTile: CircleAvatar(
                    radius: 40,
                    child: Transform.rotate(angle: 40,
                    child: const Icon(Icons.link,size: 32,)),
                  ),
              tileTitle: "Create call link",
              tileSubtitle: const Text("Share a link for your WhatsApp call",
              style: TextStyle(
              fontSize: 14.0,
              ),
              ),),
          const SizedBox(
            height: 4,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "Recent",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black45),
            ),
          ),
          VersatileListTile(
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
              tileTitle: myChatsHistory[1]["contactName"].toString(),
              tileSubtitle: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [ Icon(
                  Icons.call_made,
                  size: 18.0,
                  color:  Colors.green[700],
                  ),

                  const Text("  (3)  Today, 18:16",


                  style: TextStyle(
                  fontSize: 14.0,
                  ),
                  ),],
                ),
              ),
              trailingTile: const Icon(
              Icons.call,
              color: Colors.teal,
              size: 24.0,
              ),)
        ],
      ),
        
      
    );
  }
}
