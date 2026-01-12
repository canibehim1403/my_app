import 'package:flutter/material.dart';

class Project1 extends StatelessWidget {
  const Project1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("Hello Flutter",style: TextStyle())

        ),
        backgroundColor: Colors.blueAccent,

      ),

      // body: Container(
      //   color: Colors.grey,
      //   child: Column(
      //     children: [
      //       Center(
      //         child: Container(
      //           width: 300.0,
      //           height: 200.0,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(20.0),
      //             color: Colors.pinkAccent,
      //            ),
      //
      //          ),
      //
      //       ),
      //     ],
      //   ),
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      //
      //   selectedItemColor: Colors.blue,
      // ),
      body: Center(
        child: Column(

          children: [
            Icon(Icons.home,size: 100,color: Colors.pink),
            Icon(Icons.home,size: 100,color: Colors.yellow),
            Icon(Icons.home,size: 100,color: Colors.blue),
            Icon(Icons.home,size: 100,color: Colors.green),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 50,color: Colors.white),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken,size: 50,color: Colors.white),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.skip_next,size: 50,color: Colors.redAccent),
              label: "",
            ),
          ],

          selectedItemColor: Colors.blue,
        ),
    );
  }
}
