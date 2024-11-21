import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar Screen"),
      ),
      body: Center(
        child: Text(
          "This is the Calendar Screen!",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
