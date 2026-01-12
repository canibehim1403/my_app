import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/login_page/apd_login_page.dart';

class ApdSuccessPage extends StatelessWidget {
  const ApdSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "Images/apd_image/image_login.jpg",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 240),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Container(
                      height: 190,
                      width: 300,
                      child: Image.asset("Images/apd_image/successful_logo.jpg"),
                    ),
                  ),
                ),
                SizedBox(height: 140),
                Center(
                  child: SizedBox(
                    width: 230,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        padding: EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ApdLoginPage()),
                        );
                      },
                      child: Text("Done",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
