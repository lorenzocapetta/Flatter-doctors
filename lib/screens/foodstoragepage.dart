// ignore_for_file: prefer_const_constructors_in_immutables, avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class FoodStoragePage extends StatelessWidget {
  FoodStoragePage({Key? key}) : super(key: key);

  static const routename = 'Food Storage';

  final List<String> entries = <String>['A', 'B', 'C'];

  @override
  Widget build(BuildContext context) {
    print('${FoodStoragePage.routename} built');
    return Scaffold(
      appBar: AppBar(
        title: Text(FoodStoragePage.routename),
      ),
      body:    
        ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              // color: Colors.amber,
              child: Text('Entry ${entries[index]}'),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
    
  } //build

} //FoodStorage