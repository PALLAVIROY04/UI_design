import 'package:flutter/material.dart';
import 'package:ui_design/selectedpage/AccountScreen.dart';
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName: Text("Users"), accountEmail: Text("User**@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset("assets/images/happy.jpeg",width: 90,height: 90,
                fit: BoxFit.cover,
              ),
            ),),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorite"),
            onTap: ()=>null,
          ),
          ListTile(
            leading: Icon(Icons.face_2_outlined),
            title: Text("User"),
            onTap: ()=>null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notification"),
            onTap: ()=>null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: ()=> Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => AccountScreen())
            ),
          ),
          ListTile(
            leading: Icon(Icons.block_flipped),
            title: Text("Block"),
            onTap: ()=>null,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Log Out"),
            onTap: ()=>null,
          ),
        ],
      ),
    );
  }
}
