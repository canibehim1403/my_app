import 'package:flutter/material.dart';
import 'home_page/apd_home_page.dart';

class ApdEditThemePage extends StatefulWidget {
  const ApdEditThemePage({super.key});

  @override
  State<ApdEditThemePage> createState() => _ApdEditThemePageState();
}

class _ApdEditThemePageState extends State<ApdEditThemePage> {
  String selectedTheme = 'Classic';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF37B3C9), Color(0xFF3891C7)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Container(
              height: 3,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Theme selection buttons
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                _buildThemeButton("Classic"),
                const SizedBox(width: 20),
                _buildThemeButton("Chinese New Year"),
              ],
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              children: [
                _buildThemePreview("Classic", "Images/other/image_cat5.jpg"),
                const SizedBox(width: 10),
                _buildThemePreview("Chinese", "Images/other/image_cat5.jpg"),
                const SizedBox(width: 10),
                _buildThemePreview("Chinese", "Images/other/image_cat5.jpg"),
                const SizedBox(width: 10),
                _buildThemePreview("Chinese", "Images/other/image_cat5.jpg"),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Select button
          ElevatedButton(
            onPressed: () {
              print("Selected theme: $selectedTheme");

              if (selectedTheme == "Chinese New Year") {
                // Navigate to ApdHomePage (Chinese New Year UI)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ApdHomePage()),
                );
              } else {
                // Handle Classic theme logic here
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Classic theme applied")),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
            child: const Text("Select"),
          ),
        ],
      ),
    );
  }

  Widget _buildThemeButton(String themeName) {
    final isSelected = selectedTheme == themeName;
    return InkWell(
      onTap: () {
        setState(() {
          selectedTheme = themeName;
        });
      },
      child: Container(
        height: 50,
        width: 150,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSelected ? Colors.white : Colors.grey,
          border: Border.all(width: 1, color: Colors.white),
        ),
        child: Text(
          themeName,
          style: TextStyle(
            color: isSelected ? Colors.blue : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildThemePreview(String themeName, String imagePath) {
    final isSelected = selectedTheme == themeName;
    return InkWell(
      onTap: () {
        setState(() {
          selectedTheme = themeName;
        });
      },
      child: Column(
        children: [
          Container(
            width: 150,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: isSelected ? Colors.white : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            themeName,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
