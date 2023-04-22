// ignore_for_file: prefer_const_constructors_in_immutables, avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CookBook extends StatelessWidget {
  CookBook({Key? key}) : super(key: key);

  static const routename = 'Cookbook';

  @override
  Widget build(BuildContext context) {
    print('${CookBook.routename} built');
    return Scaffold(
      appBar: AppBar(
        title: Text(CookBook.routename),
      ),
    );
    
  } //build

} //CookBook