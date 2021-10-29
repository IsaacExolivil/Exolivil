

import 'package:exolivil_v2/model/category.dart';
import 'package:flutter/material.dart';

class DataIngles{
  static List<Category>getMockedCatgeories() {
    return [
      Category(name: 'Ingles I',
       icon: Icons.favorite,
        color: Colors.amber,
         imgName: 'algebra2',
         imageName2: 'celula2',
          subCategories: []
          ),

          Category(name: 'Ingles II',
       icon: Icons.favorite,
        color: Colors.red,
         imgName: 'algebra2',
         imageName2: 'celula2',
          subCategories: []
          ),
          Category(name: 'Luna',
       icon: Icons.favorite,
        color: Colors.indigo,
         imgName: 'pitagoras',
         imageName2: 'celula2',
          subCategories: []
          ),
           Category(name: 'Bicho',
       icon: Icons.favorite,
        color: Colors.amber,
         imgName: 'algebra',
         imageName2: 'celula2',
          subCategories: []
          ),
          Category(name: 'Trigonometría',
       icon: Icons.favorite,
        color: Colors.indigo,
         imgName: 'pitagoras',
         imageName2: 'celula2',
          subCategories: []
          ),

    ];
  }
}