import 'package:exolivil_v2/widgets/Quiz/body.dart';
import 'package:flutter/material.dart';

class QuizPage  extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: () {}, child: Text('Saltar'))

        ],
      ),
      body: Body(),
    );
  }
}

