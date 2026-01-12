import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "Images/image_loginpage.jpg",
            fit: BoxFit.cover,
          ),

          //Blur effect
          // BackdropFilter(
          //   filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          //   child: Container(
          //     color: Colors.black.withOpacity(0.8), // optional overlay
          //   ),
          // ),
          Column(
            children: [
              Container(
                height: 200.0,
                margin: EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("ABC Bank",
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 40,
                      child: Center(child: Text("Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 80,
                      height: 40,
                      child: Center(child: Text("Loan",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 80,
                      height: 40,
                      child: Center(child: Text("Card",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                         ),
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 80,
                      height: 40,
                      child: Center(child: Text("Check",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )
                        )
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 100),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 25.0,
                      child: Text("Transfer",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
