import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Report Screen"),
      ),
      body: Center(
        child: Text(
          "This is the Report Screen!",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
