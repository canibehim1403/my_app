import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/payments_page/apd_internet_page.dart';
import '../home_page/apd_homepage_classic.dart';
class ApdPaymentPage extends StatefulWidget {
  const ApdPaymentPage({super.key});

  @override
  State<ApdPaymentPage> createState() => _ApdPaymentPageState();
}

class _ApdPaymentPageState extends State<ApdPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.zero,
            child: Column(
                children: [
                  SizedBox(height: 80),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 20,),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset("Images/apd_image/vector.jpg"),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text("Payment", style: TextStyle(color: Colors.blue, fontSize: 30)),
                      SizedBox(width: 170),
                      Image.asset(
                        "Images/menu_icon/payment_icon.jpg",
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          blurRadius: 7,
                          offset: const Offset(0, 6),
                        ),
                      ],
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFF3891C7), Color(0xFF37B3C9)],
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("All", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                          Text("Favorites", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(color: Colors.cyan, height: 6),
                      ),
                      Expanded(
                        flex: 10,
                        child: Container(color: Colors.grey, height: 6),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Positioned(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ApdInternetPage()),
                                );
                              },
                              child: Container(
                                color: Colors.grey.withOpacity(0.1),
                                height: 80,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Image.asset(
                                        "Images/menu_icon/internet_icon.jpg",
                                        fit: BoxFit.contain,
                                        height: 35,
                                        width: 35,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 9,
                                      child: Container(
                                        margin: const EdgeInsets.only(right: 30),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Text("Internet & TV",
                                                style: TextStyle(color: Colors.black, fontSize: 18)),
                                            Icon(Icons.arrow_forward_ios, size: 20, color: Colors.grey),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Container(
                                color: Colors.grey.withOpacity(0.5),
                                width: double.infinity,
                                height: 2,
                              ),
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
      bottomNavigationBar: Container(
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
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute( builder: (context) => ApdHomePageClassic()));
                },
                child: Image.asset(
                  "Images/menu_icon/home_icon.jpg",
                  height: 30,
                  width: 30,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context, MaterialPageRoute( builder: (context) => const ApdPaymentPage()));
                },
                child: Image.asset(
                  "Images/menu_icon/back_icon.jpg",
                  height: 30,
                  width: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}