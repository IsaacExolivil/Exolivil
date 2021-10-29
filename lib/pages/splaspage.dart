
// ignore_for_file: use_key_in_widget_constructors

import 'package:exolivil_v2/main.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage = const MyHomePage();
  
  SplashPage({goToPage, duration});


  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: duration), () {
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => goToPage));
    });
    return Scaffold(
      body: Container(
        
       
        
        color: const Color(0xFF80C038),
        alignment: Alignment.center,
        child: Row(
          children: const [
            Icon(Icons.favorite, color: Colors.white, size: 100, ),
            Text('Exolivil', style: TextStyle(
              fontSize: 20,
              color: Colors.white
            )),
          ],
        )
        ,
        
      ),
    );
  }
}