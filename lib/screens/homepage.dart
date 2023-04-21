import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_doctors/screens/loginpage.dart';
import 'package:flutter_doctors/screens/infopage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routename = 'Homepage';

  @override
  Widget build(BuildContext context) {
    print('${HomePage.routename} built');
    return Scaffold(
      appBar: AppBar(
        title: const Text(HomePage.routename),
        actions: [
          IconButton(
              onPressed: () => _toInfoPage(context), icon: Icon(MdiIcons.human))
        ],
      ),
      body: const Center(
          child: Text('Meal'),
        ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('user1'),
            ),
            ListTile(
              leading:  const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () => _toLoginPage(context),
            ),
          ],
        ),
      ),
    );
  } //build

  void _toLoginPage(BuildContext context){
    //Pop the drawer first 
    Navigator.pop(context);
    //Then pop the HomePage
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  }//_toCalendarPage

  void _toInfoPage(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: ((context) => InfoPage())));
  }

} //HomePage
