import 'package:flutter/material.dart';
import 'widgets/app_drawer.dart';

class EmailPage extends StatefulWidget {
  final String? userEmail;
  const EmailPage({super.key, this.userEmail});

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Email"),
        actions: [
          PopupMenuButton<String>(
            offset: const Offset(0, 50),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(3.0)
              ),
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Text(
                    "New",
                    style: TextStyle(fontSize: 18,),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_drop_down),
                  SizedBox(width: 10),
                ],
              ),
            ),
            onSelected: (value) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('$value selected')),
              );
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'Email',
                child: ListTile(
                  leading: Icon(Icons.email_outlined),
                  title: Text('Email'),
                ),
              ),
              PopupMenuItem<String>(
                value: 'Appointment',
                child: ListTile(
                  leading: Icon(Icons.calendar_today_outlined),
                  title: Text("Appointment"),
                ),
              ),
              PopupMenuItem<String>(
                value: 'Contact',
                child: ListTile(
                  leading: Icon(Icons.contacts_outlined),
                  title: Text("Contact"),
                ),
              ),
              PopupMenuItem<String>(
                value: 'Task',
                child: ListTile(
                  leading: Icon(Icons.task_outlined),
                  title: Text("Task"),
                ),
              ),
              PopupMenuItem<String>(
                value: 'Note',
                child: ListTile(
                  leading: Icon(Icons.note_outlined),
                  title: Text("Note"),
                ),
              ),
              PopupMenuItem<String>(
                value: 'Online Meeting',
                child: ListTile(
                  leading: Icon(Icons.meeting_room_outlined),
                  title: Text("Online Meeting"),
                ),
              ),
              PopupMenuItem<String>(
                value: 'Documents',
                child: ListTile(
                  leading: Icon(Icons.file_copy_outlined),
                  title: Text("Documents"),
                ),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text(
          widget.userEmail != null ? "Welcome, ${widget.userEmail}!" : "Welcome to Emails!",
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
