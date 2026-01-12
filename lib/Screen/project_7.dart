import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:my_app/Screen/project_7_3.dart';
import 'package:my_app/Screen/mydata.dart';

class Project7 extends StatefulWidget {
  const Project7({super.key});

  @override
  State<Project7> createState() => _Project7State();
}

class _Project7State extends State<Project7> {
  // var myData = [
  //   {"name": "Apple","des": "https://www.apple.com","img": "https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?201609051049"},
  //   {"name": "Google","des": "https://www.google.com","img": "https://kgo.googleusercontent.com/profile_vrt_raw_bytes_1587515358_10512.png"},
  //   {"name": "Meta","des": "https://www.meta.com","img": "https://logos-world.net/wp-content/uploads/2021/10/Meta-facebook-New-Logo.png"},
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
              "ListView Builder",
              style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10.0),
          itemCount: myData.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              onTap: (){
                Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context) =>
                      Project73(
                        ind: index,
                        // img: myData[index]['img'],
                        // title: myData[index]['name'],
                        // url: myData[index]['des'],
                      )
                  ),
                );
              },
              title: Text("${myData[index]['name']}"),
              subtitle: Text("${myData[index]['des']}"),
              trailing: Icon(Icons.double_arrow),
              leading: CircleAvatar(
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: CachedNetworkImage(
                        imageUrl: ("${myData[index]['img']}"),
                        placeholder: (context, url) => SizedBox(
                          width: 25.0,
                          height: 25.0,
                          child: Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 3.0,
                              backgroundColor: Colors.black,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
              ),
            );
        },
      ),
    );
  }
}
