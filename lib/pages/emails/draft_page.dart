import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraftPage extends StatefulWidget {
  const DraftPage({super.key});

  @override
  State<DraftPage> createState() => _DraftPageState();
}

class _DraftPageState extends State<DraftPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Draft Screen"),
      ),
      body: Center(
        child: Text(
          "This is the Draft Screen!",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
