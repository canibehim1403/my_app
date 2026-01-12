import 'package:flutter/material.dart';

class Project5 extends StatefulWidget {
  const Project5({super.key});

  @override
  State<Project5> createState() => _Project5State();
}

class _Project5State extends State<Project5> {
  // var txtQty = TextEditingController();
  // var txtPrice = TextEditingController();
  // var txtTotal = TextEditingController();
  //
  // void setTotal() {
  //   if (txtQty.text == "") {
  //     txtTotal.text = "0";
  //   }
  //   else if (txtPrice.text == "") {
  //     txtTotal.text = "0";
  //   }
  //   else {
  //     txtTotal.text =
  //     " ${int.parse(txtQty.text) * double.parse(txtPrice.text)} ";
  //   }
  // }
  var txtItem = TextEditingController();
  var myItem = [ "Hello" , "Hi" , "Bonjour" , "Sur Sdey" ];
@override
  void initState() {
  // TODO: implement initState
  super.initState();
}
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
      // body: ListView(
      //   padding: const EdgeInsets.all(20.0),
      //   children: [
      //     Text("QTY"),
      //     TextField(
      //       onChanged: (txt){
      //         setTotal();
      //       },
      //       controller: txtQty,
      //       keyboardType: const TextInputType.numberWithOptions(),
      //       decoration: const InputDecoration(
      //         border: OutlineInputBorder(),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 10.0,
      //     ),
      //     Text("Price"),
      //     TextField(
      //       onChanged: (txt){
      //         setTotal();
      //       },
      //       controller: txtPrice,
      //       decoration: InputDecoration(
      //         border: OutlineInputBorder(),
      //       ),
      //     ),
      //     Text("Total"),
      //     TextField(
      //       controller: txtTotal,
      //       decoration: InputDecoration(
      //         border: OutlineInputBorder(),
      //       ),
      //     )
      //   ],
      // ),
      // body: ListView(
      //   children: [
      //     Text(
      //       "${ myItem[2] }",
      //       style: TextStyle(color: Colors.blueAccent, fontSize: 30),
      //     ),
      //   ],
      // ),
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
              return Container(
                margin: EdgeInsets.all(10.0),
                height: 40.0,
                color: Colors.orangeAccent,
                child: Center(
                  child: Text("${myItem[index]}"),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
