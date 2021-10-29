
import 'package:exolivil_v2/model/category.dart';
import 'package:exolivil_v2/model/subcategory.dart';
import 'package:flutter/material.dart';

class Detalles extends  StatelessWidget {
 
 SubCategory? subCategory;

 Detalles(SubCategory? subcategory,  {  this.subCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pensamiento Cientifico'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 6),
            padding: const EdgeInsets.all(6),
            child: ClipOval(
              child: Image.asset(
                'assets/user21.png',
              ),
            ),
          )
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.green.shade900, Colors.green]),
          ),
        ),
      ),
      body: Center(child: Text(this.subCategory!.name!),),
    );
  }
}