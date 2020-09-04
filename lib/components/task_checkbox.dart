import 'package:flutter/material.dart';

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({this.checkboxStatus, this.checkboxToggle});

  final bool checkboxStatus;
  final Function checkboxToggle;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxStatus,
      activeColor: Color(0xff4462FE),
      onChanged: checkboxToggle,
    );
  }
}
