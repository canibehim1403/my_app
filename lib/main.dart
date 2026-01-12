import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/account_page/apd_account_page.dart';
import 'package:my_app/apd_app_clone/edit_menu_page/apd_edit_menu_page.dart';
import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';
import 'package:my_app/apd_app_clone/sign_up/apd_first_page.dart';
import 'package:my_app/apd_app_clone/transfer_page/apd_local_transfer_page.dart';
import 'package:my_app/apd_app_clone/transfer_page/apd_other_transfer_page.dart';
import 'package:my_app/apd_app_clone/transfer_page/apd_own_transfer_page.dart';
import 'package:my_app/apd_app_clone/transfer_page/apd_transfer_page.dart';
import 'package:my_app/apd_app_clone/transfer_page/apd_transfer_to_bakong_account_page.dart';
import 'package:my_app/apd_app_clone/transfer_page/apd_transfer_to_bank_account_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Scaffold(
          body: FirstPage(),
        ),
      ),
    ),
  );
}
