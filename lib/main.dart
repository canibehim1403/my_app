import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';
import 'package:my_app/apd_app_clone/login_page/apd_login_page.dart';
import 'package:my_app/apd_app_clone/sign_up/apd_first_page.dart'; // language selection page
import 'package:my_app/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  final box = await Hive.openBox('userSavedBox');
  final isLanguageSelected = box.get(AppConstants.isLanguageSelected, defaultValue: false);
  final isLogin = box.get(AppConstants.isLogin, defaultValue: false);

  Widget startPage;
  if (!isLanguageSelected) {
    startPage = const FirstPage();
  } else if (!isLogin) {
    startPage = const ApdLoginPage();
  } else {
    startPage = const ApdHomePageClassic();
  }

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: startPage,
  ));
}
