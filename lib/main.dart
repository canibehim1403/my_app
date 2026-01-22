import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:my_app/apd_app_clone/check_management_page/apd_request_check_page.dart';
import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';
import 'package:my_app/apd_app_clone/login_page/apd_login_page.dart';
import 'package:my_app/apd_app_clone/sign_up/apd_first_page.dart';
import 'package:my_app/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  final box = await Hive.openBox('userSavedBox');

  // Read both flags
  final bool isLanguageSelected =
  box.get(AppConstants.isLanguageSelected, defaultValue: false);
  final bool isLogin =
  box.get(AppConstants.isLogin, defaultValue: false);
  final bool isExisting =
  box.get(AppConstants.isExisting, defaultValue: false);

  print("isLanguageSelected: $isLanguageSelected, isLogin: $isLogin, isExisting: $isExisting");

  // Decide start page
  Widget startPage;
  if (!isLanguageSelected) {
    startPage = FirstPage();
  } else if (!isLogin && isExisting ) {
    startPage = ApdLoginPage();
  } else {
    startPage = ApdHomePageClassic();
  }

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: startPage
    ),
  );
}
