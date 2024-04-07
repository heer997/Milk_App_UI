import "package:flutter/material.dart";
import "package:wscubetech_app_ui/App_Drawer/CustomWidget_AppDrawer.dart";

class AppDrawer extends StatelessWidget {
  AppDrawer({super.key});

  List titleList = ["My Profile", "Home", "Cart", "Edit Profile", "Logout"];

  List leadingList = [
    Icons.account_circle,
    Icons.home,
    Icons.shopping_cart_outlined,
    Icons.edit,
    Icons.logout,
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,

        /// For removing padding at Upper side of AppDrawer
        shrinkWrap: true,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              "Jay Hanuman",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: const Text("jayhanuman654@gmail.com"),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/Lord-Hanuman.jpg"),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.blue.shade700,
                  Colors.blue.shade600,
                  Colors.blue.shade100,
                  Colors.blue.shade50,
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text("My Profile"),
            onTap: () {},
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {},
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(Icons.shopping_cart_outlined),
            title: const Text("Cart"),
            onTap: () {},
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text("Edit Profile"),
            onTap: () {},
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
