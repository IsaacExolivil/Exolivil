import 'package:flutter/material.dart';

class Preguntas{
     int? id;
     int? respuesta;
     String? pregunta;
     List<String>? opciones;

     Preguntas({
       this.id,
       this.respuesta,
       this.pregunta,
       this.opciones
     });
}
    const List sample_data = [
     {
      "id": 1,
       "pregunta": "Sharon esta loquita?",
      "opciones": ['si', 'no', 'tal vez', 'no lo se'],
      "respuesta": 1
     },
     {
       "id": 2,
       "pregunta": "Sharon es de isaac",
      "opciones": ['si', 'no', 'tal vez', 'no lo se'],
      "respuesta": 1

     }

    ];

