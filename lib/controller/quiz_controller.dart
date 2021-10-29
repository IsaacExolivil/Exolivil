import 'package:exolivil_v2/model/preguntas.dart';
import 'package:exolivil_v2/widgets/Quiz/preguntas_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizController extends GetxController with SingleGetTickerProviderMixin {
  //Hacemos animacion de progress bar

  late AnimationController _animationController;
  late Animation _animation;

  Animation get animation => this._animation;

  List<Preguntas> _preguntas =
      sample_data.map((preguntas) => Preguntas(
        id: preguntas['id'],
        pregunta: preguntas['pregunta'],
        opciones: preguntas['opciones'],
        respuesta: preguntas['respuesta']
        )).toList();

        List<Preguntas> get preguntas => this._preguntas;

  @override
  void onInit() {
    //Duración de 60 segundos
    _animationController =
        AnimationController(duration: Duration(seconds: 1200), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        update();
      });
    //empezamos nuestra animación
    _animationController.forward();
    super.onInit();
  }
}
