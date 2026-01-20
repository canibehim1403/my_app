import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:my_app/apd_app_clone/sign_up/apd_existing_page.dart';
import 'package:my_app/apd_app_clone/sign_up/second_page.dart';
import '../../constants.dart';
import '../login_page/apd_login_page.dart';
import '../support_func/func.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  Future<void> _selectLanguage(BuildContext context, Widget nextPage) async {
    final box = await Hive.openBox('userSavedBox');
    await box.put(AppConstants.isLanguageSelected, true);
    await box.put(AppConstants.isLogin, false);
    Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => const ApdLoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constain) {
          return Container(
            child: Stack(
              fit: StackFit.expand ,
              children: [
                Image.asset("Images/apd_image/image_login.jpg", fit: BoxFit.fill,),
                Positioned(
                  top: 800,
                  bottom: 70,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    margin: const EdgeInsets.only(left: 70),
                    child: const Text(
                      "ASIA-PACIFIC DEVELOPMENT BANK",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: constain.maxHeight*.3),
                  child: Stack(                    
                    alignment: Alignment.centerRight,
                    children: [
                      //Triangle background image
                      // Image.asset(
                      //   "Images/apd_image/first_page_vector.jpg",
                      //   fit: BoxFit.fill,
                      //   width: constain.maxWidth*.4,  
                      //   height: constain.maxWidth*.66,                      
                      // ),

                      //Select Language Button
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('Images/apd_image/first_page_vector.jpg',), fit: BoxFit.fill)
                        ),
                        padding: EdgeInsets.only(top: 65, bottom: 65, left: 200),
                        // margin: EdgeInsets.only(right: 10),
                        child: Container(
                          height: constain.maxHeight*.2,
                          // color: Colors.red,
                          padding: EdgeInsets.only(right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 20,
                            children: [
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ENExistingPage()),
                                    );
                                  },
                                  child: FittedBox(
                                    child: const Text(
                                      "English",
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                              // const SizedBox(height: 20),
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => KhmerPage()),
                                    );
                                  },
                                  child: FittedBox(
                                    child: const Text(
                                      "ភាសាខ្មែរ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Bayon',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // const SizedBox(height: 20),
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ChinesePage()),
                                    );
                                  },
                                  child: FittedBox(
                                    child: const Text(
                                      "中文",
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 0,
                  right: 0,
                  child: ClipPath(
                    child: Container(
                      width: 150,
                      height: 250,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              const SizedBox(height: 20),
                              CustomPaint(
                                size: const Size(180, 160),
                                painter: GoldTrianglePainter(),
                              ),
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "APD",
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "BANK",
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w200,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "Mobile",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}