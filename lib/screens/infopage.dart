// ignore_for_file: prefer_const_constructors_in_immutables, avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InfoPage extends StatelessWidget {
  InfoPage({Key? key}) : super(key: key);

  static const routename = 'Infopage';

  @override
  Widget build(BuildContext context) {
    print('${InfoPage.routename} built');
    return Scaffold(
      appBar: AppBar(
        title: Text(InfoPage.routename),
      ),
    );
    
  } //build

} //CartPage