import 'package:flutter/material.dart';


class Project4 extends StatelessWidget {
  const Project4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Flutter",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text("Hello",style: TextStyle(color: Colors.cyanAccent,fontSize: 20)),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {

              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: (){

              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 200.0,
            color: Colors.black,
            child: ListView(
              //shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(7.0),
                      clipBehavior: Clip.hardEdge,
                      width: 300.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.yellow,
                      ),
                      child: Image.asset(
                        "Images/other/image_cat5.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        top: 10.0,
                        left: 10.0,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.blueAccent.withOpacity(0.7),
                          ),
                          child: Text(
                            "10% Discount",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        )
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(7.0),
                      clipBehavior: Clip.hardEdge,
                      width: 300.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.yellow,
                      ),
                      child: Image.asset(
                        "Images/image_cat5.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        top: 10.0,
                        left: 10.0,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.blueAccent.withOpacity(0.7),
                          ),
                          child: Text(
                            "10% Discount",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        )
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(7.0),
                      clipBehavior: Clip.hardEdge,
                      width: 300.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.yellow,
                      ),
                      child: Image.asset(
                        "Images/image_cat5.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        top: 10.0,
                        left: 10.0,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.blueAccent.withOpacity(0.7),
                          ),
                          child: Text(
                            "10% Discount",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        )
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(7.0),
                      clipBehavior: Clip.hardEdge,
                      width: 300.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.yellow,
                      ),
                      child: Image.asset(
                        "Images/image_cat5.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        top: 10.0,
                        left: 10.0,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.blueAccent.withOpacity(0.7),
                          ),
                          child: Text(
                            "10% Discount",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        )
                    ),
                  ],
                ),
                // Container(
                //   clipBehavior: Clip.hardEdge,
                //   margin: EdgeInsets.all(5.0),
                //   width: 300,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10.0),
                //     color: Colors.redAccent,
                //   ),
                //   child: Image.asset(
                //     "Images/image_cat3.jpg",
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ],
            ),
          ),
          Container(
            height: 250.0,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.local_drink),
                    Text("This is welcome drink",style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  height: 224.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 200.0,
                        margin: EdgeInsets.only(right: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          //color: Colors.blueAccent,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                                child: Stack(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(5.0),
                                      width: 300.0,
                                      height: double.infinity,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Colors.cyan,
                                      ),
                                      child: Image.asset(
                                        "Images/other/image_cat2.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                        top: 10.0,
                                        left: 10.0,
                                        child: Container(
                                          padding: EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.blueAccent.withOpacity(0.7),
                                          ),
                                          child: Text(
                                            "10% Discount",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                            ),
                            Expanded(
                              flex: 2,
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("Hello welcome to Flutter Dev"),
                                      Text("\$ 10.00"),
                                      Row(
                                        children: [
                                          Icon(Icons.delivery_dining),
                                          Text("\$ 0.5 for delivery"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 200.0,
                        margin: EdgeInsets.only(right: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          //color: Colors.blueAccent,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    width: 300.0,
                                    height: double.infinity,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.cyan,
                                    ),
                                    child: Image.asset(
                                      "Images/other/image_cat2.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                      top: 10.0,
                                      left: 10.0,
                                      child: Container(
                                        padding: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          color: Colors.blueAccent.withOpacity(0.7),
                                        ),
                                        child: Text(
                                          "10% Discount",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.only(left: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Hello welcome to Flutter Dev"),
                                    Text("\$ 10.00"),
                                    Row(
                                      children: [
                                        Icon(Icons.delivery_dining),
                                        Text("\$ 0.5 for delivery"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 200.0,
                        margin: EdgeInsets.only(right: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          //color: Colors.blueAccent,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    width: 300.0,
                                    height: double.infinity,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.cyan,
                                    ),
                                    child: Image.asset(
                                      "Images/other/image_cat2.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                      top: 10.0,
                                      left: 10.0,
                                      child: Container(
                                        padding: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          color: Colors.blueAccent.withOpacity(0.7),
                                        ),
                                        child: Text(
                                          "10% Discount",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.only(left: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Hello welcome to Flutter Dev"),
                                    Text("\$ 10.00"),
                                    Row(
                                      children: [
                                        Icon(Icons.delivery_dining),
                                        Text("\$ 0.5 for delivery"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 200.0,
                        margin: EdgeInsets.only(right: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          //color: Colors.blueAccent,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    width: 300.0,
                                    height: double.infinity,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.cyan,
                                    ),
                                    child: Image.asset(
                                      "Images/other/image_cat2.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                      top: 10.0,
                                      left: 10.0,
                                      child: Container(
                                        padding: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          color: Colors.blueAccent.withOpacity(0.7),
                                        ),
                                        child: Text(
                                          "10% Discount",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.only(left: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Hello welcome to Flutter Dev"),
                                    Text("\$ 10.00"),
                                    Row(
                                      children: [
                                        Icon(Icons.delivery_dining),
                                        Text("\$ 0.5 for delivery"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 200.0,
                        margin: EdgeInsets.only(right: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          //color: Colors.blueAccent,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    width: 300.0,
                                    height: double.infinity,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.cyan,
                                    ),
                                    child: Image.asset(
                                      "Images/other/image_cat2.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                      top: 10.0,
                                      left: 10.0,
                                      child: Container(
                                        padding: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          color: Colors.blueAccent.withOpacity(0.7),
                                        ),
                                        child: Text(
                                          "10% Discount",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.only(left: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Hello welcome to Flutter Dev"),
                                    Text("\$ 10.00"),
                                    Row(
                                      children: [
                                        Icon(Icons.delivery_dining),
                                        Text("\$ 0.5 for delivery"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 300.0,
            color: Colors.greenAccent,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.brown,
        fixedColor: Colors.yellow,
        unselectedItemColor: Colors.redAccent,
        selectedLabelStyle: TextStyle(
            fontSize: 12,
            fontFamily: "Metal"
        ),
        unselectedLabelStyle: TextStyle(
            fontSize: 12,
            fontFamily: "Bayon"
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.blue,size: 35),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.blue,size: 35),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv_sharp,color: Colors.blue,size: 35),
            label: 'Live',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.backspace_sharp,color: Colors.blue,size: 35),
            label: 'Back',
          ),
        ],
      ),
    );
  }
}
