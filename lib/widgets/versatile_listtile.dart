// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class VersatileListTile extends StatelessWidget {
  final Widget leadingTile;
  final Widget? trailingTile;
  final String tileTitle;
  final String tileSubtitle;

  const VersatileListTile({
    Key? key,
    required this.leadingTile,
    this.trailingTile,
    required this.tileTitle,
    required this.tileSubtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(right: 12,left: 2,),
      onTap: () {},
      horizontalTitleGap: 0,
      leading: leadingTile,
      trailing: trailingTile,
      title: Text(
        tileTitle,
        style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        tileSubtitle,
        style: const TextStyle(
          fontSize: 12.0,
        ),
      ),
    );
  }
}