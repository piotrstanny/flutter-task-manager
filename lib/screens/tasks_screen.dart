import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4462FE),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 80.0, left: 30.0, right: 30.0, bottom: 20.0),
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
                  height: 20.0,
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
                Text(
                  'You\'ve got 5 tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    offset: Offset(0.0, 5.0),
                    blurRadius: 25.0,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
