import 'package:flutter/material.dart';
import 'package:my_app/Screen/mydata.dart';

class Project73 extends StatefulWidget {
  const Project73(
      {super.key ,
        required this.ind,
        // required this.img,
        // required this.url,
        // required this.title,
      });
  // final img;
  // final title;
  // final url;
  final int ind;

  @override
  State<Project73> createState() => _Project73State();
}

class _Project73State extends State<Project73> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "${myData[widget.ind]['name']}",
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
                "${myData[widget.ind]['img']}",
              ),
            ),
            Text("${myData[widget.ind]['name']}",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("${myData[widget.ind]['des']}"),
          ],
        ),
      ),
    );
  }
}
