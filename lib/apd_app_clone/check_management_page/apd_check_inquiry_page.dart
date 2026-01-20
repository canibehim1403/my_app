import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';

class ApdCheckInquiryPage extends StatefulWidget {
  const ApdCheckInquiryPage({super.key});

  @override
  State<ApdCheckInquiryPage> createState() => _ApdCheckInquiryPageState();
}

class _ApdCheckInquiryPageState extends State<ApdCheckInquiryPage> {
  final List<Map<String, String>> checkItems = [
    {"checkNo": "000010000101", "status": "NEW"},
    {"checkNo": "000010000102", "status": "NEW"},
    {"checkNo": "000010000103", "status": "NEW"},
    {"checkNo": "000010000104", "status": "NEW"},
    {"checkNo": "000010000105", "status": "NEW"},
    {"checkNo": "000010000106", "status": "NEW"},
    {"checkNo": "000010000107", "status": "NEW"},
    {"checkNo": "000010000108", "status": "NEW"},
    {"checkNo": "000010000109", "status": "NEW"},
    {"checkNo": "000010000110", "status": "New"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3F2FD),
      body: Container(
        child: Padding(
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
                  Text("Check Inquiry", style: TextStyle(color: Colors.blue, fontSize: 30)),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                height: 80,
                width: double.infinity,
                margin: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.withOpacity(0.3),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("APD", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Colors.grey)),
                          Text("BANK", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.grey)),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("From Account", style: TextStyle(color: Colors.blueGrey, fontSize: 16)),
                            Image.asset("Images/menu_icon/three_dot.jpg", height: 30),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search Check No. and Status",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 10),
                  itemCount: checkItems.length,
                  itemBuilder: (context, index) {
                    final item = checkItems[index];
                    return Container(
                      height: 80,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              "Images/menu_icon/check_no_icon.jpg",
                              height: 40,
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: const EdgeInsets.only(left: 5, right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    flex: 12,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Check No.", style: TextStyle( fontSize: 20, color: Colors.blue)),
                                        Text(item["checkNo"]!,
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.grey,
                                            ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    flex: 4,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Status", style: TextStyle( fontSize: 18, color: Colors.grey)),
                                          Text(item["status"]!,
                                              style: const TextStyle( fontSize: 20, color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.blue,
                                size: 35,
                            ),
                          ),
                        ],
                      ),
                    );
                    },
                ),
              ),
            ],
          ),
        ),
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
