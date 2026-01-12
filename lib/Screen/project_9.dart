import 'package:flutter/material.dart';

class Project9 extends StatefulWidget {
  const Project9({super.key});

  @override
  State<Project9> createState() => _Project9State();
}

class _Project9State extends State<Project9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150.0,
            ),
            Container(
              height: 200.0,
              width: 200.0,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "Images/image_cat5.jpg",
                 // fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Text("Thorn Rithy",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Text("Flutter Developer"),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Text("12K",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, // makes text bold
                            fontSize: 18,                // optional: adjust size
                            color: Colors.black,
                          ),),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text("Following"),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 30.0,
                ),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Text("120K",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, // makes text bold
                            fontSize: 18,                // optional: adjust size
                            color: Colors.black,
                          ),),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text("Follower"),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 30.0,
                ),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Text("1.2M",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, // makes text bold
                            fontSize: 18,                // optional: adjust size
                            color: Colors.black,
                          ),),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text("Like"),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 18.0,
            ),
            ElevatedButton(
                onPressed: (){
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,   // background color
                  foregroundColor: Colors.white,  // text/icon color
                  //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), // optional
                  shape: RoundedRectangleBorder(  // optional: rounded corners
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              child: Text("Follow",
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
