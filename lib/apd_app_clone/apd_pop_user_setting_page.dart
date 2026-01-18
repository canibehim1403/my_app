import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/login_page/apd_login_page.dart';
import 'package:my_app/apd_app_clone/user_setting_page/apd_user_setting_page.dart';

class ApdPopUserSettingPage extends StatelessWidget {
  const ApdPopUserSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Image.asset(
            "Images/menu_icon/arrow_classic.jpg",
            fit: BoxFit.contain,
            height: 35,
            width: 80,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF37B3C9), Color(0xFF3891C7)],
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push( context, MaterialPageRoute(
                      builder: (context) => ApdUserSettingPage()),
                  );
                  },
                child: _menuItem(
                  icon: "Images/menu_icon/user_setting_icon.jpg",
                  label: "User Setting",
                ),
              ),
              _menuItem(icon: "Images/menu_icon/contact_us_icon.jpg", label: "Contact Us"),
              _menuItem(icon: "Images/menu_icon/faq_icon.jpg", label: "FAQ"),
              _menuItem(icon: "Images/menu_icon/term_condition_icon.jpg", label: "Terms & Conditions"),
              _menuItem(icon: "Images/menu_icon/about_us_icon.jpg", label: "About Us"),
              SizedBox(
                width: 230,
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan.withOpacity(0.5),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {
                    Navigator.push( context, MaterialPageRoute(
                        builder: (context) => ApdLoginPage()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("Images/menu_icon/logout_icon.jpg",
                          height: 30,
                          width: 30,
                          color: Colors.white,
                      ),
                      const SizedBox(width: 20),
                      const Text(
                          "Log out",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                          ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ],
    ),
    );
  }

  Widget _menuItem({required String icon, required String label}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      child: Row(
        children: [
          Image.asset(icon, height: 25, width: 25),
          const SizedBox(width: 20),
          Expanded(
            child: Text(label,
                style: const TextStyle(color: Colors.white, fontSize: 20)),
          ),
          Image.asset("Images/menu_icon/three_dot.jpg",
              height: 35, color: Colors.white),
        ],
      ),
    );
  }
}

