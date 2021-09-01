import 'package:flutter/material.dart';
import 'package:kaka_online/LoginPage/Login.dart';
import 'package:kaka_online/PagesDrawer/about%20us.dart';

import 'PagesDrawer/Contact.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Gautam Yadav",
              style: TextStyle(fontSize: 22),
            ),
            accountEmail: Text("gautamyadav422@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/a2.png"),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            onTap: () => Navigator.of(context).pop(),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text("Contact"),
            trailing: Icon(Icons.contact_mail),
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => ContactPage())),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.vertical_align_bottom_outlined),
            title: Text("About Us"),
            trailing: Icon(Icons.workspaces_outline),
            onTap: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => AboutPages())),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log Out"),
            trailing: Icon(Icons.exit_to_app),
            onTap: () =>  Navigator.of(context)
                .pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (context) => LoginPage()
              ),
                  (_) => false,
            ),
          ),
        ],
      ),
    );
  }
}
