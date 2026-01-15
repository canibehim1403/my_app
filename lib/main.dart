import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/apd_pop_user_setting_page.dart';
import 'package:my_app/apd_app_clone/edit_menu_page/apd_edit_menu_page.dart';
import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';
import 'package:my_app/apd_app_clone/user_setting_page/apd_user_setting_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Scaffold(
          body: ApdPopUserSettingPage(),
        ),
      ),
    ),
  );
}
