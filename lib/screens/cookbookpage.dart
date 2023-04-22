// ignore_for_file: prefer_const_constructors_in_immutables, avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CookBookPage extends StatelessWidget {
  CookBookPage({Key? key}) : super(key: key);

  static const routename = 'Cookbook';

  @override
  Widget build(BuildContext context) {
    print('${CookBookPage.routename} built');
    return Scaffold(
      appBar: AppBar(
        title: Text(CookBookPage.routename),
      ),
    );
    
  } //build

} //CookBook