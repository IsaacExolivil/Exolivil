import 'package:exolivil_v2/constantes.dart';
import 'package:exolivil_v2/controller/quiz_controller.dart';
import 'package:exolivil_v2/data/examen_biomoleculas.dart';
import 'package:exolivil_v2/model/preguntas.dart';
import 'package:exolivil_v2/widgets/Quiz/preguntas_card.dart';
import 'package:exolivil_v2/widgets/Quiz/progressbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Body extends StatelessWidget {
 
List<Preguntas> categories = ExamenBiomoleculas.obtenerDatos();

  @override
  Widget build(BuildContext context) {
    QuizController _preguntasController = Get.put(QuizController());
    
    return Stack(
      children: [
        Image.asset('assets/back.png',
        width: 1500,
        height: 1500,
        
        fit: BoxFit.cover
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: KDefaultPadding),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text.rich(
                  TextSpan(
                  text: 'Pregunta 1',
                  style: Theme.of(context).textTheme.headline4!.copyWith(color: KSecundaryColor),
                  children: [
                    TextSpan(
                      text: '/10',
                      style: Theme.of(context).textTheme.headline5!.copyWith(color: KSecundaryColor),
                    )
                  ],
                )),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: KDefaultPadding),
              Expanded(child: PageView.builder(
                itemCount: _preguntasController.preguntas.length,
                itemBuilder: (context, index) =>preguntascard(
                  preguntas: _preguntasController.preguntas[index],

              ),
              ),),
            ],
          ),
        )
      ],
      
    );
  }
}
