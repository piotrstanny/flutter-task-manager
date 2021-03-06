import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/task_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_todo_app/components/tasks_list.dart';
import 'package:flutter_todo_app/screens/add_task_screen.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int tasksLeft = Provider.of<TaskData>(context).taskCount;

    return Scaffold(
      backgroundColor: Color(0xff4462FE),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(),
              ),
            ),
          );
        },
        backgroundColor: Color(0xff4462FE),
        child: Icon(
          Icons.add,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 50.0, bottom: 35.0, left: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.format_list_bulleted,
                    color: Color(0xff4462FE),
                    size: 35.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Task Manager',
                  style: GoogleFonts.bebasNeue(
                    textStyle: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  '$tasksLeft tasks left.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  tasksLeft == 0
                      ? 'Well done! You can relax now :)'
                      : 'Let\'s get it done one by one!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
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
                    blurRadius: 20.0,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Provider.of<TaskData>(context).listLength > 0
                  ? TasksList()
                  : Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            'No tasks on the list.\nTap \'Add\' button at the bottom to add new.',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
