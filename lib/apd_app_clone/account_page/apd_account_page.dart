import 'package:flutter/material.dart';
import '../home_page/apd_homepage_classic.dart';
class ApdAccountPage extends StatefulWidget {
  const ApdAccountPage({super.key});

  @override
  State<ApdAccountPage> createState() => _ApdAccountPageState();
}

class _ApdAccountPageState extends State<ApdAccountPage> {
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
                SizedBox(height: 70),
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
                    Text("Accounts", style: TextStyle(color: Colors.blue, fontSize: 30)),
                    SizedBox(width: 170),
                    Image.asset(
                      "Images/menu_icon/account_icon.jpg",
                      height: 50,
                      width: 50,
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 10,
                        offset: Offset(0, 7),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        "Images/menu_icon/account_background.jpg",
                        fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 8,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("All Account \nSummary",
                                      style: TextStyle(color: Colors.white, fontSize: 20)),
                                  SizedBox(height: 10),
                                  Text("100,000.00",
                                      style: TextStyle(color: Colors.white, fontSize: 30)),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Image.asset("Images/menu_icon/logo_khmer.jpg"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.blue,
                        height: 6,
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Container(
                        color: Colors.grey,
                        height: 6,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.grey.withOpacity(0.1),
                      height: 80,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.asset(
                              "Images/menu_icon/current_account_icon.jpg",
                              fit: BoxFit.contain,
                              height: 60,
                              width: 70,
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                            flex: 9,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ApdHomePageClassic()),
                                    );
                                  },
                                  child: const Text(
                                    "Current Account | 123 456 789",
                                    style: TextStyle(color: Colors.black, fontSize: 14),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const ApdHomePageClassic()),
                                          );
                                        },
                                        child: const Text(
                                          "100,000.00 USD",
                                          style: TextStyle(color: Colors.black, fontSize: 20),
                                        ),
                                      ),
                                      Image.asset(
                                          "Images/menu_icon/three_dot.jpg",
                                          height: 30,
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
                    Container(
                        color: Colors.grey.withOpacity(0.5),
                        width: double.infinity,
                        height: 2,
                    ),
                    Container(
                      color: Colors.grey.withOpacity(0.1),
                      height: 80,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.asset(
                              "Images/menu_icon/saving_account_icon.jpg",
                              fit: BoxFit.contain,
                              height: 60,
                              width: 70,
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                            flex: 9,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ApdHomePageClassic()),
                                    );
                                  },
                                  child: const Text(
                                    "Saving Account | 123 456 789",
                                    style: TextStyle(color: Colors.black, fontSize: 14),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const ApdHomePageClassic()),
                                          );
                                        },
                                        child: const Text(
                                          "100,000.00 USD",
                                          style: TextStyle(color: Colors.black, fontSize: 20),
                                        ),
                                      ),
                                      Image.asset(
                                        "Images/menu_icon/three_dot.jpg",
                                        height: 30,
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
                    Container(
                      color: Colors.grey.withOpacity(0.5),
                      width: double.infinity,
                      height: 2,
                    ),
                    Container(
                      color: Colors.grey.withOpacity(0.1),
                      height: 80,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.asset(
                              "Images/menu_icon/current_account_icon.jpg",
                              fit: BoxFit.contain,
                              height: 60,
                              width: 70,
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                            flex: 9,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ApdHomePageClassic()),
                                    );
                                  },
                                  child: const Text(
                                    "Current Account | 123 456 789",
                                    style: TextStyle(color: Colors.black, fontSize: 14),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const ApdHomePageClassic()),
                                          );
                                        },
                                        child: const Text(
                                          "100,000.00 USD",
                                          style: TextStyle(color: Colors.black, fontSize: 20),
                                        ),
                                      ),
                                      Image.asset(
                                        "Images/menu_icon/three_dot.jpg",
                                        height: 30,
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
                    Container(
                      color: Colors.grey.withOpacity(0.5),
                      width: double.infinity,
                      height: 2,
                    ),
                    Container(
                      color: Colors.grey.withOpacity(0.1),
                      height: 80,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.asset(
                              "Images/menu_icon/saving_account_icon.jpg",
                              fit: BoxFit.contain,
                              height: 60,
                              width: 70,
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                            flex: 9,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ApdHomePageClassic()),
                                    );
                                  },
                                  child: const Text(
                                    "Saving Account | 123 456 789",
                                    style: TextStyle(color: Colors.black, fontSize: 14),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const ApdHomePageClassic()),
                                          );
                                        },
                                        child: const Text(
                                          "100,000.00 USD",
                                          style: TextStyle(color: Colors.black, fontSize: 20),
                                        ),
                                      ),
                                      Image.asset(
                                        "Images/menu_icon/three_dot.jpg",
                                        height: 30,
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
                    Container(
                      color: Colors.grey.withOpacity(0.5),
                      width: double.infinity,
                      height: 2,
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
                  Navigator.pop(context, MaterialPageRoute( builder: (context) => const ApdHomePageClassic()));
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