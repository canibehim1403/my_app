import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';
class ApdInternetPage extends StatefulWidget {
  const ApdInternetPage({super.key});

  @override
  State<ApdInternetPage> createState() => _ApdInternetPageState();
}

class _ApdInternetPageState extends State<ApdInternetPage> {
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
                      Text("Internet & TV", style: TextStyle(color: Colors.blue, fontSize: 30)),
                      SizedBox(width: 120),
                      Image.asset(
                        "Images/menu_icon/payment_icon.jpg",
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                  SizedBox(height: 40,),
                  Column(
                    children: [
                      Stack(
                        children: [
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
                                colors: [
                                  Color(0xFF3891C7),
                                  Color(0xFF37B3C9),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 35,
                            top: 25,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.search, size: 35, color: Colors.white),
                                SizedBox(width: 20),
                                Text(
                                  "Search",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                  color: Colors.cyan,
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
                    ],
                  ),
                  SizedBox(height: 4,),
                  Stack(
                    children: [
                      Positioned(
                        child: Column(
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
                                        "Images/menu_icon/singmeng_logo.jpg",
                                        fit: BoxFit.contain,
                                        height: 70,
                                        width: 70,
                                        alignment: Alignment.center,
                                      )
                                  ),
                                  Expanded(
                                      flex: 9,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 20,),
                                          Container(
                                            margin: EdgeInsets.only(left: 10, top: 8, right: 30),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "SING MENG",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                SizedBox(width: 120,),
                                                Material(
                                                  color: Colors.transparent,
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(45), // match icon shape
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const ApdHomePageClassic()),
                                                      );
                                                    },
                                                    child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      size: 20,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Container(
                                color: Colors.grey.withOpacity(0.5),
                                width: double.infinity,
                                height: 2,
                              ),
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
                                        "Images/menu_icon/digi_logo.jpg",
                                        fit: BoxFit.contain,
                                        height: 70,
                                        width: 70,
                                        alignment: Alignment.center,
                                      )
                                  ),
                                  Expanded(
                                      flex: 9,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 20,),
                                          Container(
                                            margin: EdgeInsets.only(left: 10, top: 8, right: 30),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Digi Internet",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                SizedBox(width: 120,),
                                                Material(
                                                  color: Colors.transparent,
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(45), // match icon shape
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const ApdHomePageClassic()),
                                                      );
                                                    },
                                                    child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      size: 20,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Container(
                                color: Colors.grey.withOpacity(0.5),
                                width: double.infinity,
                                height: 2,
                              ),
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
                                        "Images/menu_icon/ezecom_logo.jpg",
                                        fit: BoxFit.contain,
                                        height: 60,
                                        width: 60,
                                        alignment: Alignment.center,
                                      )
                                  ),
                                  Expanded(
                                      flex: 9,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 20,),
                                          Container(
                                            margin: EdgeInsets.only(left: 10, top: 8, right: 30),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "EZECOM",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                SizedBox(width: 120,),
                                                Material(
                                                  color: Colors.transparent,
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(45), // match icon shape
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const ApdHomePageClassic()),
                                                      );
                                                    },
                                                    child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      size: 20,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Container(
                                color: Colors.grey.withOpacity(0.5),
                                width: double.infinity,
                                height: 2,
                              ),
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
                                        "Images/menu_icon/onetv_logo.jpg",
                                        fit: BoxFit.contain,
                                        height: 70,
                                        width: 70,
                                        alignment: Alignment.center,
                                      )
                                  ),
                                  Expanded(
                                      flex: 9,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 20,),
                                          Container(
                                            margin: EdgeInsets.only(left: 10, top: 8, right: 30),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "OneTV",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                SizedBox(width: 120,),
                                                Material(
                                                  color: Colors.transparent,
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(45), // match icon shape
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const ApdHomePageClassic()),
                                                      );
                                                    },
                                                    child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      size: 20,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ],
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
                  SizedBox(height: 284,),
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
                        margin: EdgeInsets.fromLTRB(30, 20, 30, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context, MaterialPageRoute(builder: (context) => ApdHomePageClassic()),
                                );
                              },
                              child: Image.asset(
                                "Images/menu_icon/home_icon.jpg",
                                height: 30,
                                width: 30,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context, MaterialPageRoute(builder: (context) => const ApdHomePageClassic()),
                                );
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
                    ],
                  ),
                ],
            ),
          ),
        ],
      ),
    );
  }
}