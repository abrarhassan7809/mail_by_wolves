import 'package:flutter/material.dart';
import 'package:mail_by_wolves/pages/widgets/item_card_list.dart';
import 'widgets/app_drawer.dart';
import 'package:mail_by_wolves/pages/widgets/action_bar.dart';

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
          Container(
            height: 40,
            width: 140,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(3.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  child: const Row(
                    children: [
                      Icon(Icons.mail, color: Colors.white, size: 18),
                      SizedBox(width: 7),
                      Text("New", style: TextStyle(fontSize: 16, color: Colors.white)),
                    ],
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('New Email functionality not implemented.')),
                    );
                  },
                ),
                const VerticalDivider(width: 1, color: Colors.white),
                PopupMenuButton<String>(
                  offset: const Offset(0, 40),
                  icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                  onSelected: (value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('$value selected')),
                    );
                  },
                  itemBuilder: (BuildContext context) => const <PopupMenuEntry<String>>[
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
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const ActionBar(),
            const SizedBox(height: 20),
            ItemCardList(),
          ],
        ),
      ),
    );
  }
}
