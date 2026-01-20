import 'package:flutter/material.dart';

import '../home_page/apd_homepage_classic.dart';

class ApdRequestCheckPage extends StatefulWidget {
  const ApdRequestCheckPage({super.key});

  @override
  State<ApdRequestCheckPage> createState() => _ApdRequestCheckPageState();
}

class _ApdRequestCheckPageState extends State<ApdRequestCheckPage> {
  final List<Map<String, String>> checkItems = [
    {"checkNo": "000010000101", "status": "NEW"},
    {"checkNo": "000010000102", "status": "NEW"},
    {"checkNo": "000010000103", "status": "NEW"},
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
                  Text("Request Check", style: TextStyle(color: Colors.blue, fontSize: 30)),
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
                            Text("Select Account", style: TextStyle(color: Colors.blueGrey, fontSize: 16)),
                            Image.asset("Images/menu_icon/three_dot.jpg", height: 30),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        "No. Check Book Request *",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(right: 15, left: 15),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xFF005599),
                            width: 1.2,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Image.asset(
                                "Images/menu_icon/request_check_icon.jpg",
                                height: 40,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 11,
                            child: Container(
                              height: 50,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: TextField(
                                cursorColor: Colors.blue,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter number (max 5)",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                                onChanged: (value) {
                                  final num = int.tryParse(value);
                                  if (num != null && num > 5) {
                                    print("Maximum allowed is 5");
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 10),
                      child: Text(
                        "Note: Allowed request check book with maximum 5",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        "Preferred Collection Branch *",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                height: 100, // 🔹 Adjusted height for better spacing
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemCount: checkItems.length,
                  itemBuilder: (context, index) {
                    final item = checkItems[index];
                    return Container(
                      width: 280, // 🔹 Slightly narrower for better fit
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Image.asset(
                              "Images/menu_icon/check_no_icon.jpg",
                              height: 36,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Check No.",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Status",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 8),
                            const Icon(Icons.keyboard_arrow_down,
                                color: Colors.blue, size: 30),
                          ],
                        ),
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
