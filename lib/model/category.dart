 import 'dart:ui';

import 'package:flutter/material.dart';

class Category {
    String? name;
   IconData? icon;
   Color? color;
   String? imgName;
   String? imageName2;
   List<Category>? subCategories;

   Category(
     {
       this.imageName2,
         this.name,
         this.icon,
        this.color,
         this.imgName,
         this.subCategories
     }
   );
 }