import 'package:flutter/material.dart';

class Project3 extends StatelessWidget {
  const Project3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
            "សារមន្ទីរឧក្រិដ្ឋកម្មប្រល័យពូជសាសន៍ប៉ុលពត",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "Bayon"
            )
        ),
        actions: [
          Icon(
            Icons.notifications,color: Colors.white, size: 30,
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      drawer: Drawer(
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
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Image.asset(
                    "Images/other/image_cat5.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.black,
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 5, right: 5.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      child: Text("To center the middle icon in your Flutter bottom navigation bar, you can use a BottomAppBar with a Row and MainAxisAlignment.spaceAround or MainAxisAlignment.center, depending on your layout needs. Here's a practical example:",
                      style: TextStyle(color: Colors.white,fontSize: 12)),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      child: Row(
                        children: [
                          Expanded(child:
                              Icon(Icons.account_circle, color: Colors.white,size:30),
                          ),
                          Expanded(child:
                              Icon(Icons.eighteen_mp_sharp, color: Colors.white,size: 30),
                          ),
                          Expanded(child:
                              Icon(Icons.radar, color: Colors.white,size: 30),
                          ),
                          Expanded(child:
                              Icon(Icons.keyboard, color: Colors.white,size: 30),
                          ),
                          Expanded(child:
                              Icon(Icons.label_important, color: Colors.white,size: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                height: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.lightBlueAccent,
                                ),
                                child: Text(
                                  "Hello Guy.....",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                              child: Container(
                                height: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.yellowAccent,
                                ),
                                child: Text(
                                  "Hello Guy.....",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
            label: 'សារមន្ទីរ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.blue,size: 35),
            label: 'ពូជសាសន៍',
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
