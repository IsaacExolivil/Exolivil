import 'package:exolivil_v2/constantes.dart';
import 'package:exolivil_v2/model/preguntas.dart';
import 'package:exolivil_v2/widgets/Quiz/opciones.dart';
import 'package:flutter/material.dart';


class preguntascard extends StatelessWidget {
  const preguntascard({
    Key? key,
    required this.preguntas,
  }) : super(key: key);

  final Preguntas preguntas;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: KDefaultPadding),
      padding: EdgeInsets.all(KDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        children: [
          Text(
             preguntas.pregunta!,
          style: Theme.of(context)
          .textTheme.headline6!.copyWith(color: KBlackColor)
          ),
          SizedBox(height: KDefaultPadding / 2),
          ...List.generate(
            preguntas.opciones!.length,
             (index) => opciones(
               index: index,
               text: preguntas.opciones![index],
               press: (){},
             ))
        ],
      ),
    );
  }
}

