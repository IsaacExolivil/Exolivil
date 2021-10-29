import 'package:flutter/material.dart';

class Lectura extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Lectura ({Key? key}) : super(key: key);

  @override
  _LecturaState createState() => _LecturaState();
}

class _LecturaState extends State<Lectura > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Lectura'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.green.shade900, Colors.green]),
          ),
        ),
      ),
    );
  }
}