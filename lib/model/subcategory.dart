import 'dart:ui';

import 'package:exolivil_v2/model/category.dart';
import 'package:flutter/material.dart';

class SubCategory extends Category {

  SubCategory({
    String? name,
    IconData? icon,
    Color? color,
    String? imgName
  }): super(
    name: name,
    color: color,
    icon: icon,
    imgName: imgName


  );
}