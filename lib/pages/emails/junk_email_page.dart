import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JunkEmailPage extends StatefulWidget {
  const JunkEmailPage({super.key});

  @override
  State<JunkEmailPage> createState() => _JunkEmailPageState();
}

class _JunkEmailPageState extends State<JunkEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Junk Screen"),
      ),
      body: Center(
        child: Text(
          "This is the Junk Screen!",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
