import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/login_page/apd_login_page.dart';
import 'package:my_app/apd_app_clone/sign_up/apd_first_page.dart';
import 'package:my_app/apd_app_clone/sign_up/apd_signup_page.dart';
import '../support_func/func.dart';


class ENExistingPage extends StatelessWidget {
  const ENExistingPage({super.key});

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
            Positioned(
              top: 800,
              bottom: 70,
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(left: 70),
                //width: 7.71,
                child: Text(
                  "ASIA-PACIFIC DEVELOPMENT BANK",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => ApdLoginPage()) //ApdSignupPage()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 35,
                        vertical: 17),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: Colors.yellow,
                          width: 3), ),
                    child: Text( 'Existing Customer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  left: 230,
                  top: 150,
                  child: Image.asset(
                    "Images/apd_image/first_page_vector.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 330, top: 300),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(top: 65, bottom: 65, left: 40),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => FirstPage()),
                              );
                            },
                            child: FittedBox(
                              child: const Text(
                                "Back",
                                style: TextStyle(color: Colors.white, fontSize: 20),
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
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: ClipPath(
                child: Container(
                    width: 100,
                    height: 250,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(height: 20),
                            CustomPaint(
                              size: Size(180, 160),
                              painter: GoldTrianglePainter(),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'APD ',
                                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white),
                                  ),
                                  TextSpan(
                                    text: 'BANK',
                                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Mobile",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                ),
              ),
            ),
          ],
        )
    );
  }
}
