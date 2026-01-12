import 'package:flutter/material.dart';

class Project2 extends StatelessWidget {
  const Project2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
            child: Text("Apsara",style: TextStyle(
              color: Colors.white
            ))
        ),
            backgroundColor: Colors.black,
            centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: Stack(
                children:[
                  Container(
                    color: Colors.white,
                    child: Image.asset(
                      "Images/other/image_cat6.jpg",
                      height: 500.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 10.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Apsara Dancer",style: TextStyle(color: Colors.blue,fontSize: 20)),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text("Cambodia, Cambodian", style: TextStyle(color: Colors.amberAccent,fontSize: 14)),
                        ],
                      ),
                  ),
                ],
              ),
          ),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey,
                        ),
                        child: Text("Hello welcome to flutter lesion for beginner,Hello welcome to flutter lesion for beginner", style: TextStyle(color: Colors.white,fontSize: 16)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.greenAccent,
                        ),
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                                child: Container(
                                  //color: Colors.deepOrange,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.deepOrange,
                                  ),
                                  child: Image.asset(
                                      "Images/other/image_cat5.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                              ),
                            Expanded(
                              flex: 3,
                              child: Stack(
                                children: [
                                  Image.asset(
                                    "Images/other/image_cat2.jpg",
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken, size: 45,color: Colors.white),
            label: "Heart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 45,color: Colors.white),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.keyboard_backspace_outlined ,size: 45,color: Colors.white),
            label: "Back",
          ),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}