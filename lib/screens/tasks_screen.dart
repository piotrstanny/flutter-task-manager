import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff4462FE),
        body: Container(
          padding: EdgeInsets.only(
              top: 100.0, left: 30.0, right: 30.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 40.0,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.format_list_bulleted,
                  color: Color(0xff4462FE),
                  size: 40.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Task Manager',
                style: GoogleFonts.bebasNeue(
                  textStyle: TextStyle(
                    fontSize: 50.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
