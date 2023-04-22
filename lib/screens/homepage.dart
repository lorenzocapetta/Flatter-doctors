import 'package:flutter/material.dart';
import 'package:flutter_doctors/models/cookbook.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_doctors/screens/loginpage.dart';
import 'package:flutter_doctors/screens/infopage.dart';
import 'package:flutter_doctors/screens/cookbookpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routename = 'Homepage';

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List _screens = [
    HomePage(),
    CookBookPage(),
    InfoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    print('${HomePage.routename} built');
    return Scaffold(
      appBar: AppBar(
        title: const Text(HomePage.routename),
        actions: [
          IconButton(
              onPressed: () => _toInfoPage(context), icon: const Icon(MdiIcons.account))
        ],
      ),
      body: 
        _screens[_currentIndex],
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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.foodForkDrink),
            label: 'Cookbook',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.account),
            label: 'Profile',
          ),
        ],
        backgroundColor: Colors.blue,
        // selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedIconTheme: const IconThemeData(color: Colors.black38),
        unselectedItemColor: Colors.black38,

        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        currentIndex: _currentIndex,
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
