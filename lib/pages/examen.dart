import 'package:exolivil_v2/constantes.dart';
import 'package:exolivil_v2/pages/quiz/quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Examen extends   StatelessWidget {


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          

        ],
      ),
      body: Stack(
        children: [
          Image.asset('assets/back.png',
          width: 1500,
          height: 1500,
          
          fit: BoxFit.cover
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               
                children: [
                  Spacer(flex: 2,),
                Text('Empezar examen',
           style: Theme.of(context).textTheme.headline4!.copyWith(
               color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text('Escribe tu información abajo', style: TextStyle(color: Colors.white, fontSize: 18),
          
          ),
          Spacer(),
          TextField(
            decoration: InputDecoration( 
              fillColor: Colors.white,
              filled: true,    
              hintText: 'Nombre Completo', 
              border: OutlineInputBorder(               
                borderRadius: BorderRadius.all(Radius.circular(12)),            
              )
            ),

          ),
          Spacer(),
          InkWell(
            onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) =>QuizPage()));
            },
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.all(KDefaultPadding * 0.75),
              decoration: BoxDecoration(
                gradient: KPrimaryGradient,
                borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: Text('Empezar examen',
              style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black, fontSize: 18), 
              ),
          
            ),
          ),
          Spacer(flex: 2)

              ],
              ),
            ),   
      ),
        ],
    
      
    ),
    );
  }
}