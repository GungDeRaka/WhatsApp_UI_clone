import 'package:flutter/material.dart';

import '../widgets/versatile_listtile.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 12),
        children: [
          VersatileListTile(
            leadingTile: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      color: Colors.grey[350],
                      height: 50,
                      width: 50,
                      child: const Icon(
                        Icons.groups,
                        color: Colors.white,
                        size: 38.0,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  right: 1,
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 11,
                      child: Icon(
                        Icons.add,
                        size: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
            tileTitle: "New Community",
          ),
          const SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.pink.withOpacity(0.04),
            thickness: 10,
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  VersatileListTile(
                    leadingTile: Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          color: Colors.grey[350],
                          height: 50,
                          width: 50,
                          child: const Icon(
                            Icons.groups,
                            color: Colors.white,
                            size: 40.0,
                          ),
                        ),
                      ),
                    ),
                    tileTitle: "Komunitas Pawang Hujan",
                  ),
                  const Divider(
                    thickness: 1.0,
                  ),
                  VersatileListTile(
                    leadingTile: Padding(
                      padding: const EdgeInsets.only(right: 16,left: 4),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.green[300],
                        child: Icon(
                          Icons.campaign_rounded,
                          color: Colors.green[850],
                          size: 28.0,
                        ),
                      ),
                    ),
                    tileTitle: "Share tips & tricks",
                    tileSubtitle: const Text(
                      "+62 12345678904: Terima kasih atas sarannya kack",
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 14.0,
                      ),
                    ),
                    trailingTile: const Text(
                      "21/11/2022",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  VersatileListTile(
                    leadingTile: Padding(
                      padding: const EdgeInsets.only(right: 12,left: 4),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey[350],
                        child: const Icon(
                          Icons.group,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                    ),
                    tileTitle: "Pawang Hujan Intensif Class",
                    tileSubtitle: const Text(
                      "PawangH.Expert: Besok kita coba ritual hujan linggis",
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        
                        fontSize: 14.0,
                      ),
                    ),
                    trailingTile: const Padding(
                      padding:  EdgeInsets.only(bottom: 10),
                      child: Text(
                        "21/11/2022",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                  Row(
                  children: [
                    const SizedBox(width: 12,),
                    Icon(Icons.navigate_next,color: Colors.grey[500],),
                    const SizedBox(width: 20,),
                    Text("View all",
                    style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[500],
                    ),
                    ),
                  ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
