import 'package:flutter/material.dart';

class Project72 extends StatefulWidget {
  const Project72(
      {super.key ,
        required this.img,
        required this.title,
        required this.url
      });
  final img;
  final title;
  final url;

  @override
  State<Project72> createState() => _Project72State();
}

class _Project72State extends State<Project72> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          widget.title,
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
                // "https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?201609051049",
                "${widget.img}",
              ),
            ),
            Text("${widget.title}",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("${widget.url}"),
          ],
        ),
      ),
    );
  }
}
