import 'package:flutter/material.dart';

class OnlineMeetingPage extends StatefulWidget {
  const OnlineMeetingPage({super.key});

  @override
  State<OnlineMeetingPage> createState() => _OnlineMeetingPageState();
}

class _OnlineMeetingPageState extends State<OnlineMeetingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Screen"),
      ),
      body: Center(
        child: Text(
          "This is the Online Screen!",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
