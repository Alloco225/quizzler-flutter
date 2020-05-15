import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountEmail: Text("UserEmail"),
            accountName: Text("UserName"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/pp.png"),
            ),
          ),
          // ? Options
          // ! // TODO make it gridview
          ListTile(title: Text("Progression"),),
          ListTile(title: Text("Themes"),),
          ListTile(title: Text("Learn"),),
          ListTile(title: Text("Paths"),),
          
        ],
      ),
    );
  }
}
