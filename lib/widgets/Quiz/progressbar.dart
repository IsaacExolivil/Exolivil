import 'package:exolivil_v2/constantes.dart';
import 'package:exolivil_v2/controller/quiz_controller.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:get/get.dart';
class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 3),
        borderRadius: BorderRadius.circular(50)
      ),
      child: GetBuilder<QuizController>(
        init: QuizController(),
         builder: (controller) {
        print(controller.animation.value);
   
       
          return Stack(
            children: [
              LayoutBuilder(builder: (context, constrains) => Container(
                width: constrains.maxWidth * controller.animation.value,
                decoration: BoxDecoration(
                  gradient: KPrimaryGradient,
                  borderRadius: BorderRadius.circular(50)
                ),
              )
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding / 2),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Text("${(controller.animation.value * 60).round()} sec"),
                  WebsafeSvg.asset('assets/clock.svg'),
              ],
              ),
                ))
            ],
          );
        }
      ),
    );
  }
}