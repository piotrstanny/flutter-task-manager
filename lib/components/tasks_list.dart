import 'package:flutter/material.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: ListView(
        children: <Widget>[
          TaskTile(),
          TaskTile(),
          TaskTile(),
          TaskTile(),
          TaskTile(),
        ],
      ),
    );
  }
}
