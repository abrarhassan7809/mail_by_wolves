import 'package:flutter/material.dart';
import 'package:mail_by_wolves/pages/calendars/calendar_page.dart';
import 'package:mail_by_wolves/pages/calendars/task_page.dart';
import 'package:mail_by_wolves/pages/contacts/contact_page.dart';
import 'package:mail_by_wolves/pages/contacts/global_address_list_page.dart';
import 'package:mail_by_wolves/pages/emails/sent_email_page.dart';
import 'package:mail_by_wolves/pages/more/file_storage_page.dart';
import 'package:mail_by_wolves/pages/more/news_feed_page.dart';
import 'package:mail_by_wolves/pages/more/notes_page.dart';
import 'package:mail_by_wolves/pages/more/online_meeting_page.dart';
import 'package:mail_by_wolves/pages/more/report_page.dart';
import 'package:mail_by_wolves/pages/more/setting_page.dart';
import '../emails/delete_item_page.dart';
import '../emails/draft_page.dart';
import '../emails/index_page.dart';
import '../emails/junk_email_page.dart';

class AppDrawer extends StatelessWidget {

  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                      ListTile(
                        title: Text("Inbox"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const IndexPage()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text("Drafts"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DraftPage()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text("Deleted Items"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DeleteItemPage()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text("Junk Email"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const JunkEmailPage()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text("Sent Email"),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SentEmailPage()),
                          );
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("Calendar"),
                    leading: Icon(Icons.calendar_month),
                    children: [
                      ListTile(
                        title: Text("Calendar"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const CalendarPage()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text("Tasks"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const TaskPage()),
                          );
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("Contact"),
                    leading: Icon(Icons.contacts),
                    children: [
                      ListTile(
                        title: Text("Contacts"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ContactPage()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text("Global Address List"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const GlobalAddressListPage()),
                          );
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("More"),
                    leading: Icon(Icons.more),
                    children: [
                      ListTile(
                        title: Text("Notes"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const NotesPage()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text("Online Meetings"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const OnlineMeetingPage()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text("News Feeds"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const NewsFeedPage()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text("File Storage"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const FileStoragePage()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text("Reports"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ReportPage()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text("Settings"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SettingPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
