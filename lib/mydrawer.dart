import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(
              Icons.face,
              size: 48.0,
              color: Colors.white,
            ),
            otherAccountsPictures: [
              Icon(
                Icons.bookmark_border,
                color: Colors.white,
              ),
            ],
            accountName: Text("H. A. Smrity"),
            accountEmail: Text("test@gmail.com"),
          ),
          ListTile(
            leading: Icon(Icons.date_range),
            title: Text("Birth date"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.mood),
            title: Text("Mood"),
            onTap: () => null,
// onTap: () => Navigator.push(
// context,
// MaterialPageRoute(
// builder: (_) => Mood(),
// ),
// ),
          ),
          ListTile(
            leading: Icon(Icons.note_add),
            title: Text("Note"),
            onTap: () => null,
            // onTap: () => Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => Note(),
            //   ),
            // ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () => null,
            // onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
