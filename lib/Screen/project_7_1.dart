import 'package:flutter/material.dart';

class Project71 extends StatefulWidget {
  const Project71({super.key});

  @override
  State<Project71> createState() => _Project71State();
}

class _Project71State extends State<Project71> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Apple",
          style: TextStyle(
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            Container(
              clipBehavior: Clip.hardEdge,
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.blueAccent,
              ),
                child: Image.network(
                  "https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?201609051049",
                ),
            ),
            Text("Hello google",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              ),
            ),
            Text("www.apple.com"),
          ],
        ),
      ),
    );
  }
}
