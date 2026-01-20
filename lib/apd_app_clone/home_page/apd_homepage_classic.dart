import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/home_page/apd_edit_theme_page.dart';
import 'package:my_app/apd_app_clone/edit_menu_page/apd_edit_menu_page.dart';
import 'package:my_app/apd_app_clone/favorites_page/apd_favorites_page.dart';
import 'package:my_app/apd_app_clone/fixed_deposit_page/apd_fixed_deposit_page.dart';
import 'package:my_app/apd_app_clone/payments_page/apd_payment_page.dart';
import 'package:my_app/apd_app_clone/transfer_page/apd_transfer_page.dart';
import '../account_page/apd_account_page.dart';
import 'apd_pop_user_setting_page.dart';
class ApdHomePageClassic extends StatefulWidget {
  const ApdHomePageClassic({super.key});

  @override
  State<ApdHomePageClassic> createState() => _ApdHomePageClassicState();
}

class _ApdHomePageClassicState extends State<ApdHomePageClassic> {
  late PageController _accountPageController;
  late List<Map<String, String>> loopedAccounts;
  int _currentAccountPage = 1;
  Timer? _accountTimer;
  late List<String> loopedImages;
  late PageController _adsPageController;
  int _currentAdsPage = 1;
  Timer? _adsTimer;
  @override
  void dispose() {
    _adsTimer?.cancel();
    _adsPageController.dispose();
    _accountTimer?.cancel();
    _accountPageController.dispose();
    super.dispose();
  }
  final List<String> _adBanners = [
    "Images/menu_icon/advertise_banner.jpg",
    "Images/menu_icon/advertise_banner.jpg",
    "Images/menu_icon/advertise_banner.jpg",
  ];
  @override void initState() {
    super.initState();
    loopedImages = [_adBanners.last, ..._adBanners, _adBanners.first];
    _adsPageController = PageController(initialPage: _currentAdsPage);
    _adsTimer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      _currentAdsPage++;
      _adsPageController.animateToPage(
        _currentAdsPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
    loopedAccounts = [_accountBanners.last, ..._accountBanners, _accountBanners.first];
    _accountPageController = PageController(initialPage: _currentAccountPage);
    _accountTimer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      _currentAccountPage++;
      _accountPageController.animateToPage(
        _currentAccountPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  final List<Map<String, String>> _accountBanners = [
    {
      "name": "Thorn Rithy",
      "accountNo": "123",
      "accountType": "Current Account",
      "currency": "USD",
    },
    {
      "name": "Thorn Rithy",
      "accountNo": "456",
      "accountType": "Saving Account",
      "currency": "KHR",
    },
    {
      "name": "Thorn Rithy",
      "accountNo": "789",
      "accountType": "Saving Account",

      "currency": "USD",
    },
  ];

  @override Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
         return false; 
         },
    child: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 120,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) => ApdEditThemePage(),
                        );
                      },
                      child: Text(
                        "Edit Theme",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset( "Images/menu_icon/chat_bubble_outline_blue.jpg",
                        fit: BoxFit.contain,
                        height: 35,
                        width: 35,
                      ),
                      Positioned(
                        bottom: 10,
                        child: Text(
                          "19",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  SizedBox(
                    height: 280,
                    child: PageView.builder(
                      controller: _accountPageController,
                      itemCount: loopedAccounts.length,
                      onPageChanged: (index) {
                        setState(() {
                          _currentAccountPage = index;

                          // Infinite loop behavior
                          if (index == 0) {
                            _accountPageController.jumpToPage(loopedAccounts.length - 2);
                            _currentAccountPage = loopedAccounts.length - 2;
                          } else if (index == loopedAccounts.length - 1) {
                            _accountPageController.jumpToPage(1);
                            _currentAccountPage = 1;
                          }
                        });
                      },
                      itemBuilder: (context, index) {
                        final account = loopedAccounts[index];
                        return _accountBanner(
                          name: account["name"]!,
                          accountNo: account["accountNo"]!,
                          accountType: account["accountType"]!,
                          currency: account["currency"]!,
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 260),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(_accountBanners.length, (index) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          width: (_currentAccountPage - 1) == index ? 36 : 30,
                          height: 3,
                          decoration: BoxDecoration(
                            color: (_currentAccountPage - 1) == index
                                ? Colors.blue
                                : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        );
                      }),
                    ),
                  ),

                  Positioned(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: double.infinity,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 280),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset(
                                            "Images/menu_icon/background_icon.jpg",
                                            fit: BoxFit.contain,
                                            height: 80,
                                            width: 80,
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              borderRadius: BorderRadius.circular(45), // match icon shape
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => const ApdAccountPage()),
                                                );
                                              },
                                              child: Image.asset(
                                                "Images/menu_icon/account_icon.jpg",
                                                fit: BoxFit.cover,
                                                height: 45,
                                                width: 45,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Accounts",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset(
                                            "Images/menu_icon/background_icon.jpg",
                                            fit: BoxFit.contain,
                                            height: 80,
                                            width: 80,
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              borderRadius: BorderRadius.circular(45),
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => ApdPaymentPage()),
                                                );
                                              },
                                              child: Image.asset(
                                                "Images/menu_icon/card_icon.jpg",
                                                fit: BoxFit.cover,
                                                height: 33,
                                                width: 50,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Cards",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset(
                                            "Images/menu_icon/background_icon.jpg",
                                            fit: BoxFit.contain,
                                            height: 80,
                                            width: 80,
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              borderRadius: BorderRadius.circular(45),
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => ApdFixedDepositPage()),
                                                );
                                              },
                                              child: Image.asset(
                                                "Images/menu_icon/fd_icon.jpg",
                                                fit: BoxFit.cover,
                                                height: 40,
                                                width: 40,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Fixed Deposit",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset(
                                            "Images/menu_icon/background_icon.jpg",
                                            fit: BoxFit.contain,
                                            height: 80,
                                            width: 80,
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              borderRadius: BorderRadius.circular(45),
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => ApdPaymentPage()),
                                                );
                                              },
                                              child: Image.asset(
                                                "Images/menu_icon/loan_icon.jpg",
                                                fit: BoxFit.cover,
                                                height: 40,
                                                width: 50,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Loan",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset(
                                            "Images/menu_icon/background_icon.jpg",
                                            fit: BoxFit.contain,
                                            height: 80,
                                            width: 80,
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              borderRadius: BorderRadius.circular(45),
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => ApdPaymentPage()),
                                                );
                                              },
                                              child: Image.asset(
                                                "Images/menu_icon/payment_icon.jpg",
                                                fit: BoxFit.contain,
                                                height: 45,
                                                width: 45,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Payments",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset(
                                            "Images/menu_icon/background_icon.jpg",
                                            fit: BoxFit.contain,
                                            height: 80,
                                            width: 80,
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              borderRadius: BorderRadius.circular(45),
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => ApdFavoritesPage()),
                                                );
                                              },
                                              child: Image.asset(
                                                "Images/menu_icon/scanqr_icon.jpg",
                                                fit: BoxFit.cover,
                                                height: 45,
                                                width: 45,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Scan QR",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset(
                                            "Images/menu_icon/background_icon.jpg",
                                            fit: BoxFit.contain,
                                            height: 80,
                                            width: 80,
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              borderRadius: BorderRadius.circular(45),
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => ApdFavoritesPage()),
                                                );
                                              },
                                              child: Image.asset(
                                                "Images/menu_icon/favorites_icon.jpg",
                                                fit: BoxFit.contain,
                                                height: 45,
                                                width: 45,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Favorites",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset(
                                            "Images/menu_icon/background_icon.jpg",
                                            fit: BoxFit.contain,
                                            height: 80,
                                            width: 80,
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              borderRadius: BorderRadius.circular(45),
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => ApdTransferPage()),
                                                );
                                              },
                                              child: Image.asset(
                                                "Images/menu_icon/transfer_icon.jpg",
                                                fit: BoxFit.cover,
                                                height: 45,
                                                width: 45,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Transfer",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  Positioned(
                    top: 550,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 110,
                          child: PageView.builder(
                            controller: _adsPageController,
                            itemCount: loopedImages.length,
                            onPageChanged: (index) {
                              setState(() {
                                _currentAdsPage = index;
                                if (index == 0) {
                                  _adsPageController.jumpToPage(loopedImages.length - 2);
                                  _currentAdsPage = loopedImages.length - 2;
                                } else if (index == loopedImages.length - 1) {
                                  _adsPageController.jumpToPage(1);
                                  _currentAdsPage = 1;
                                }
                              });
                            },
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                  //borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                    image: AssetImage(loopedImages[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(_adBanners.length, (index) {
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 250),
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              width: (_currentAdsPage - 1) == index ? 36 : 30,
                              height: 3,
                              decoration: BoxDecoration(
                                color: (_currentAdsPage - 1) == index
                                    ? Colors.blue
                                    : Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "Images/menu_icon/arrow_classic.jpg",
                      fit: BoxFit.contain,
                      height: 35,
                      width: 80,
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        width: double.infinity,
                        height: 80,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFF3891C7),
                                Color(0xFF3891C7),
                              ],
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) => const ApdEditMenuPage(),
                                );
                              },
                              child: Image.asset(
                                "Images/menu_icon/edit_menu_icon.jpg",
                                height: 30,
                                width: 30,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) => const ApdPopUserSettingPage(),
                                );
                              },
                              child: Icon(Icons.menu, color: Colors.black, size: 34),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ApdAccountPage()), );
                              },
                              child: Icon(Icons.qr_code_scanner_sharp, color: Colors.white, size: 34),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Widget _accountBanner({
  required String name,
  required String accountNo,
  required String accountType,
  required String currency,
}) {
  return Container(
    margin: EdgeInsets.fromLTRB(20, 20, 20, 50),
    clipBehavior: Clip.hardEdge,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4),
          blurRadius: 10,
          offset: Offset(0, 7),
        ),
      ],
    ),
    child: Stack(
      children: [
        Image.asset(
          "Images/apd_image/image_loginpage.jpg",
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset("Images/apd_image/vector.jpg", height: 16),
                  SizedBox(width: 10),
                  Text("APD", style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(width: 5),
                  Text("Bank", style: TextStyle(color: Colors.blue, fontSize: 18)),
                ],
              ),
              SizedBox(height: 15),
              Text(name, style: const TextStyle(color: Colors.blue, fontSize: 24, letterSpacing: 4)),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("* * * $accountNo", style: TextStyle(color: Colors.blue, fontSize: 18)),
                  SizedBox(width: 10),
                  Text("|", style: TextStyle(color: Colors.blue)),
                  SizedBox(width: 10),
                  Text(accountType, style: TextStyle(color: Colors.blue, fontSize: 14)),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("* * * $currency", style: TextStyle(color: Colors.blue, fontSize: 22)),
                  Image.asset("Images/menu_icon/bakong_icon.jpg", height: 30),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}