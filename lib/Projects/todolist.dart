import 'package:flutter/material.dart';

class Todolist extends StatefulWidget {
  const Todolist({super.key});

  @override
  State<Todolist> createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.withOpacity(0.5),
      body: Container(
        margin: EdgeInsets.only(left: 30, right: 30, top: 70),
        child: Column(
          children: [
            Text(
              "To-Do (2 left )",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  flex: 9,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Add a task",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 2,
                        )
                      )
                    )
                  ),
                ),
                SizedBox(width: 15,),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    child: TextButton(
                        onPressed: (){},
                        child: Text(
                          "Add",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
