import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: DrawerHeader(
                child: Text(
                  "Menu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                      minimumSize: Size(30, 40),
                    ),
                    child: Icon(Icons.insert_drive_file, color: Colors.white),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                      minimumSize: Size(30, 40),
                    ),
                    child: Icon(Icons.more_vert, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ExpansionTile(
                      title: Text("Email"),
                      leading: Icon(Icons.email),
                      children: [
                        ExpansionTile(
                          title: Text("Inbox"),
                          children: [
                            ListTile(
                              title: Text("Sub-item 1"),
                              onTap: () {},
                            ),
                            ListTile(
                              title: Text("Sub-item 2"),
                              onTap: () {},
                            ),
                          ],
                        ),
                        ListTile(
                          title: Text("Drafts"),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("Deleted Items"),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("Junk Email"),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("Sent Email"),
                          onTap: () {},
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("Calendar"),
                      leading: Icon(Icons.calendar_month),
                      children: [
                        ListTile(
                          title: Text("Calendar"),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("Tasks"),
                          onTap: () {},
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("Contact"),
                      leading: Icon(Icons.contacts),
                      children: [
                        CheckboxListTile(
                          title: Text("Contacts"),
                          value: true,
                          onChanged: (bool? value) {},
                        ),
                        CheckboxListTile(
                          title: Text("Global Address List"),
                          value: false,
                          onChanged: (bool? value) {},
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("Tasks"),
                      leading: Icon(Icons.task),
                      children: [
                        CheckboxListTile(
                          title: Text("Tasks"),
                          value: true,
                          onChanged: (bool? value) {},
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("More"),
                      leading: Icon(Icons.more),
                      children: [
                        ListTile(
                          title: Text("Notes"),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("Online Meetings"),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("News Feeds"),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("File Storage"),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("Reports"),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("Settings"),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          widget.userEmail != null ? "Welcome, ${widget.userEmail}!" : "Welcome to Emails!",
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
