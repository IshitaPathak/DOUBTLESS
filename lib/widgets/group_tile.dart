import 'package:flutter/material.dart';

class GroupTile extends StatefulWidget {
  final String username;
  final String groupId;
  final String groupName;
  const GroupTile(
      {super.key,
      required this.username,
      required this.groupId,
      required this.groupName});

  @override
  State<GroupTile> createState() => _GroupTileState();
}

class _GroupTileState extends State<GroupTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.groupId),
      subtitle: Text(widget.groupName),
    );
  }
}
