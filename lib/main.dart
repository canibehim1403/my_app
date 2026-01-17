import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';
// import 'package:my_app/Projects/todolist.dart';
// import 'package:my_app/apd_app_clone/apd_pop_user_setting_page.dart';
// import 'package:my_app/apd_app_clone/edit_menu_page/apd_edit_menu_page.dart';
// import 'package:my_app/apd_app_clone/fixed_deposit_page/apd_fixed_deposit_page.dart';
// import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';
// import 'package:my_app/apd_app_clone/loan_calculator_page/apd_loan_calculator_page.dart';
import 'package:my_app/apd_app_clone/sign_up/apd_first_page.dart';
import 'package:my_app/constants.dart';

// import 'package:my_app/apd_app_clone/user_setting_page/apd_user_setting_page.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized(); // Required when using plugins before runApp

  // Get a valid directory from the OS

  await Hive.initFlutter();

  final box = await Hive.openBox('userSavedBox');

  var isLogin = box.get(AppConstants.isLogin, defaultValue: false);

  print("is login $isLogin");

  await box.close();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Scaffold(
          body: isLogin ? ApdHomePageClassic() : FirstPage(),
        ),
      ),
    ),
  );
}
