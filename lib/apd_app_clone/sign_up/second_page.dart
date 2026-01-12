import 'package:flutter/material.dart';

class EnglishPage extends StatelessWidget {
  const EnglishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("English Page")
      ),
      body: Center(
        child: Text("Welcome to the second page!"),
      ),
    );
  }
}
class KhmerPage extends StatelessWidget {
  const KhmerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Khmer Page")
      ),
      body: Center(
        child: Text("Welcome to the second page!"),
      ),
    );
  }
}

class ChinesePage extends StatelessWidget {
  const ChinesePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Chinese Page")
      ),
      body: Center(
        child: Text("Welcome to the second page!"),
      ),
    );
  }
}

