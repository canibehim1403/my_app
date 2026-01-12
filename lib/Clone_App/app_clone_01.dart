import 'package:flutter/material.dart';

class AppClone01 extends StatefulWidget {
  const AppClone01({super.key});

  @override
  State<AppClone01> createState() => _AppClone01State();
}

class _AppClone01State extends State<AppClone01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(Icons.arrow_back, size: 30),
        actions: [
          Icon(Icons.favorite_border, size: 30),
          Icon(Icons.location_on, size: 30),
        ],
        title: Text("App Clone",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            color: Colors.blueGrey,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                           //width: 70,
                           height: 70,

                          decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: 20),
                                child: Text("London",style: TextStyle(fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: CircleAvatar(
                          radius: 70,
                          child: InkWell(
                            onTap: () {
                              print("bro bro");
                            },
                              child: Icon(Icons.search,size: 40,)),
                        )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            color: Colors.white,
                            height: 100,
                            width: 200,
                            child: Text("Hello"),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                          child: Center(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              color: Colors.white,
                              height: 100,
                              width: 200,
                              child: Text("Hello",
                              style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),

                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
