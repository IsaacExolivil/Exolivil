import 'package:exolivil_v2/constantes.dart';
import 'package:flutter/material.dart';


class opciones extends StatelessWidget {
  const opciones({
    Key? key, this.text, this.index, this.press,
  }) : super(key: key);
  final String? text;
  final int? index;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(top: KDefaultPadding),
        padding: EdgeInsets.all(KDefaultPadding),
        decoration: BoxDecoration(
          border: Border.all(color: KGrayColor),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${index! + 1 }. $text",
               style: TextStyle(color: KGrayColor, fontSize: 16),
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: KGrayColor)
              ),
            )
          ],
        ),
      ),
    );
  }
}
