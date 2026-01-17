import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_ce/hive.dart';
import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';
import 'package:my_app/apd_app_clone/login_page/apd_forgotpassword_page.dart';
import 'package:my_app/apd_app_clone/sign_up/apd_signup_page.dart';
import 'package:my_app/constants.dart';
import '../support_func/func.dart';

class ApdLoginPage extends StatefulWidget {
  const ApdLoginPage({super.key});

  @override
  State<ApdLoginPage> createState() => _ApdLoginPageState();
}

class _ApdLoginPageState extends State<ApdLoginPage> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isFormComplete = false;

  void _checkForm() {
    setState(() {
      isFormComplete =
          phoneController.text.isNotEmpty && passwordController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //set status bar to white
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Removes the grey color
      statusBarIconBrightness: Brightness.dark, // Use .light for white icons
    ));
  }

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("Images/apd_image/image_login.jpg", fit: BoxFit.cover,),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset("Images/apd_image/vector.jpg"),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text("Login", style: TextStyle(color: Colors.white, fontSize: 30),),
                    ],
                  ),
                  const SizedBox(height: 240),
                  Row(
                    children: [
                      SizedBox(
                        width: 110,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Country Code",
                            labelStyle: const TextStyle(color: Colors.white),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.white, width: 2),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.greenAccent, width: 2),
                            ),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.arrow_drop_down_circle_outlined, color: Colors.white,),
                              onPressed: () {
                                print("Pressed");
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: TextField(
                          controller: phoneController,
                          onChanged: (_) => _checkForm(),
                          decoration: const InputDecoration(
                            labelText: "Phone Number",
                            labelStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.greenAccent, width: 2),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: passwordController,
                    onChanged: (_) => _checkForm(),
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.greenAccent, width: 2),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ApdSignupPage()),
                          );
                        },
                        child: const Text("Sign Up", style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ApdForgotPasswordDialog()),
                          );
                        },
                        child: const Text("Forgot Password?", style: TextStyle(fontSize: 16, color: Colors.white),),
                      ),
                    ],
                  ),
                  const SizedBox(height: 140),
                  SizedBox(
                    width: 230,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                        isFormComplete ? Colors.cyan : Colors.grey,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: isFormComplete
                          ? () async {

                        final box = await Hive.openBox('userSavedBox');

                          box.put(AppConstants.isLogin, true);

                          await box.close();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ApdHomePageClassic()),
                        );
                      }
                          : null,
                      child: const Text("Confirm", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 800,
              bottom: 70,
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.only(left: 70),
                child: const Text("ASIA-PACIFIC DEVELOPMENT BANK", style: TextStyle(color: Colors.white, fontSize: 16),),
              ),
            ),
            Positioned(
              top: 160,
              left: 0,
              right: 0,
              child: ClipPath(
                child: SizedBox(
                  width: 100,
                  height: 250,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const SizedBox(height: 20),
                          CustomPaint(size: const Size(180, 160), painter: GoldTrianglePainter(),
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(text: 'APD ', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white),),
                                TextSpan(text: 'BANK', style: TextStyle( fontSize: 40, fontWeight: FontWeight.w200, color: Colors.white),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Text( "Mobile", style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
