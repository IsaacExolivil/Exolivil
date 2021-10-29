

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryIcon extends StatelessWidget {
  
  Color? color;
  IconData? iconName;
  double size;

  // ignore: use_key_in_widget_constructors
  CategoryIcon({required this.color, required this.iconName, this.size = 30});

  @override
  Widget build(BuildContext context){
    return ClipOval(
                                      child: Container(
                                        color: Colors.red,
                                        padding: const EdgeInsets.all(10),
                                        child: Icon(                                       
                                          this.iconName,
                                          size: size,
                                           color: Colors.white)
                                           ,
                                      ),
                                    );
  }

}