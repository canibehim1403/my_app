import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Project8 extends StatefulWidget {
  const Project8({super.key});

  @override
  State<Project8> createState() => _Project8State();
}
class _Project8State extends State<Project8> {
  //var posts = [];
  List<dynamic> posts = [];
  void getData() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    //var url = "https://chey7.com/app/app-1/rean-web-admin/api/get-city-list.php?s=0&e=16";
    var response = await http.get(Uri.parse(url));
  //  print(response.statusCode);
  //   if(response.statusCode == 200){
  //     setState(() {
  //       posts = json.decode(response.body);
  //       //print(posts);
  //     });
  // }
      if(response.statusCode == 200){
        setState(() {
          posts = json.decode(response.body);
          print(posts);
        });

    }
}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
            child: Text("Fetch API JSON Data",
            ),
        ),
      ),
      // body: Center(
      //   child: Text("Fetch Json API"),
      // ),
      //

      body: posts.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(posts[index]['title']),
            subtitle: Text(posts[index]['body']),
          );
          // body: ListView.builder(
          //   itemCount: posts.length,
          //     itemBuilder: (cxt, int index){
          //       return Container(
          //         height: 200.0,
          //         margin: EdgeInsets.only(top: 5.0),
          //         color: Colors.blueAccent,
          //       );
          //     }
          //   ),
        }
      )
    );
  }
}
