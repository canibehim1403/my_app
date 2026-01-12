import 'package:flutter/material.dart';
class ApdHomePage extends StatefulWidget {
  const ApdHomePage({super.key});

  @override
  State<ApdHomePage> createState() => _ApdHomePageState();
}

class _ApdHomePageState extends State<ApdHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image.asset("Images/apd_image/christmas_theme.jpg",
                    fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                "Images/apd_image/edit_theme.jpg",
                                fit: BoxFit.cover,
                                height: 60,
                                width: 130,
                              ),
                            ),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Stack(
                                clipBehavior: Clip.hardEdge,
                                alignment: Alignment.center, // Center text on image
                                children: [
                                  Image.asset(
                                    "Images/apd_image/chat_bubble_outline.jpg",
                                    fit: BoxFit.cover,
                                    height: 35,
                                    width: 35,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 7),
                                    child: Text(
                                      "19",
                                      style: TextStyle(
                                        color: Colors.white, // Make text visible on image
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
                          SizedBox(height: 400),
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "Images/apd_image/accounts_image.jpg",
                                        fit: BoxFit.contain,
                                        height: 90,
                                        width: 90,
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Account",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "Images/apd_image/fd_image.jpg",
                                        fit: BoxFit.contain,
                                        height: 90,
                                        width: 90,
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Fixed Deposit",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "Images/apd_image/cards_image.jpg",
                                        fit: BoxFit.contain,
                                        height: 90,
                                        width: 90,
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Card",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "Images/apd_image/favorites_image.jpg",
                                        fit: BoxFit.contain,
                                        height: 90,
                                        width: 90,
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Favorites",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
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
                                Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "Images/apd_image/scanqr_image.jpg",
                                        fit: BoxFit.contain,
                                        height: 90,
                                        width: 90,
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Scan QR",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "Images/apd_image/payments_image.jpg",
                                        fit: BoxFit.contain,
                                        height: 90,
                                        width: 90,
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Payments",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "Images/apd_image/topup_image.jpg",
                                        fit: BoxFit.contain,
                                        height: 90,
                                        width: 90,
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Top-Up",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "Images/apd_image/transfer_image.jpg",
                                        fit: BoxFit.contain,
                                        height: 90,
                                        width: 90,
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Transfer",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "Images/apd_image/tap_arrow.jpg",
                            fit: BoxFit.cover,
                            height: 60,
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
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                              ),
                              child: Image.asset("Images/apd_image/navigation_bar.jpg",fit: BoxFit.cover,),
                            ),
                            Container(
                              margin: EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.home_filled, color: Colors.white, size: 34),
                                  Icon(Icons.menu, color: Colors.white, size: 34),
                                  Icon(Icons.qr_code_scanner_sharp, color: Colors.white, size: 34),
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
          ],
        ),
      ),
    );
  }
}
