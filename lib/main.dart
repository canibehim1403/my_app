import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/login_page/apd_login_page.dart';
import 'package:my_app/apd_app_clone/sign_up/apd_first_page.dart';
import 'package:my_app/apd_app_clone/user_setting_page/apd_user_setting_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Scaffold(
          body: ApdLoginPage(),
        ),
      ),
    ),
  );
}
