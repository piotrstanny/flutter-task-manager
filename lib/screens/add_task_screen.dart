import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      height: 250.0,
      child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Add New Task',
                style: TextStyle(fontSize: 25.0),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type your task here...',
                ),
              ),
              RaisedButton(
                color: Color(0xff4462FE),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                onPressed: () {},
                child: Text(
                  'SAVE',
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            ],
          )),
    );
  }
}
