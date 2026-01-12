import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_app/Projects/signup_page.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "Images/image_otppage.jpg",
            fit: BoxFit.cover,
          ),
          // Blur effect
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0.6), // optional overlay
            ),
          ),
          Column(
            children: [
              Container(
                height: 200.0,
                margin: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("OTP Page",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 5),
                  child: Text("The OTP number has sent to your phone number, Please help fill it for route to other step:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  // Envelope icon
                  Icon(
                  Icons.email_outlined,
                  size: 100,
                  color: Colors.white,
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(6, (index) {
                    return Container(
                      width: 40,
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white, width: 2)),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 24),
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: "", // Hide character counter
                          border: InputBorder.none,
                           ),
                         ),
                       );
                     }),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 150,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: Text("Confirm",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
               ],
              ),
            ],
          ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        //unselectedItemColor: Colors.white,
        currentIndex: 1, // highlight Home tab
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SignupPage()),
            );
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.white,size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.white,size: 30),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv_sharp,color: Colors.white,size: 30),
            label: 'Live',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.backspace_sharp,color: Colors.white,size: 30),
            label: 'Back',
          ),
        ],
      ),
    );
  }
}
