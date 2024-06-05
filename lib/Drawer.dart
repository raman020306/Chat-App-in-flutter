// ignore_for_file: file_names

import 'package:chat_app/utiles/routes.dart';

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,

        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            // const DrawerHeader(
            //   padding: EdgeInsets.zero,
            //     // ignore: sort_child_properties_last
            //     child: UserAccountsDrawerHeader(
            //       accountName: Text("Raman Kumar"),
            //       accountEmail: Text("ramankumar25@gmail.com"),
            //       currentAccountPicture: CircleAvatar(
            //         backgroundImage: NetworkImage("https://st5.depositphotos.com/49310552/67587/i/450/depositphotos_675879634-stock-photo-cute-preteen-boy-blond-hair.jpg"),
            //       )
            //     ),
            //   decoration: BoxDecoration(
            //     color: Color.fromARGB(255, 26, 88, 138),
            //   ),
            // ),

            const SizedBox(height: 30.0),

            ListTile(
              title: const Text(
                'DVS Career Counsellor (Parent)',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.ChatScreen);
              },
            ),
            ListTile(
              title: const Text(
                'DVS Career Counsellor (Child)',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.ChildScreen);
              },
            ),
            ListTile(
              title: const Text(
                'DVS Career Counsellor (Help)',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Navigator.pushNamed(context, MyRoutes.ChildScreen);
              },
            ),
            // _footerAdd(),
          ],
        ),
      ),
    );
  }
}

// Widget _footerAdd() {
//   return const ListTile(
    
//     leading: Icon(
//       CupertinoIcons.settings,
//       color: Colors.white,
//     ),

//     title: Text(
//       "Settings",
//       textScaleFactor: 1.2,
//       style: TextStyle(
//           color: Colors.white,
//           // fontSize:18,
//           fontWeight: FontWeight.bold),
//     ),
//   );
// }
