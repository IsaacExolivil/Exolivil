import 'package:flutter/material.dart';

class Matematicas extends StatefulWidget {
  const Matematicas({Key? key}) : super(key: key);

  @override
  _MatematicasState createState() => _MatematicasState();
}

class _MatematicasState extends State<Matematicas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Matemáticas'),
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