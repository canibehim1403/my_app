import 'package:flutter/material.dart';

class Project6 extends StatefulWidget {
  const Project6({super.key});

  @override
  State<Project6> createState() => _Project6State();
}

class _Project6State extends State<Project6> {
  var txtItem = TextEditingController();
  var myItem = [ "Hello", "Hii", "Bonjour", "Duma"];
  var subItem = [ "Ah Kmab" , "Ah Dor" , "Kon Sva" , "Kjruk" ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Builder",style: TextStyle(
          color: Colors.white,
          fontSize: 24,
        )),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtItem,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: (){
                if(txtItem.text == ""){
                  return;
                }
                setState(() {
                  myItem.add(txtItem.text);
                });
                print(myItem);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Change this to any color you like
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: myItem.length,
            itemBuilder: (BuildContext context , int index){
              return ListTile(
                onTap: (){
                  setState(() {
                    myItem.removeAt(index);
                  });
                },
                title: Text("${myItem[index]}"),
                subtitle: Text("${subItem[index]}"),
                trailing: Icon(Icons.home),
                leading: Icon(Icons.remove),
              );
            },
          ),
        ],
      ),
    );
  }
}
