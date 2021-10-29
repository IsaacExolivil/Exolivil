

import 'package:exolivil_v2/model/category.dart';
import 'package:exolivil_v2/model/subcategory.dart';
import 'package:flutter/material.dart';

class DataAnalitico {
  static List<Category>getMockedCatgeories() {
    return [
      Category(name: 'Células ',
       icon: Icons.favorite,
        color: Colors.red,
         imgName: 'algebra',
         imageName2: 'celula2',
          subCategories: [
            SubCategory(
              color: Colors.red,
              name: 'Lección',
              imgName: 'leccion'
            ),
            SubCategory(
              color: Colors.red,
              name: 'Ejercicios',
              imgName: 'task2'
            ),
            SubCategory(
              color: Colors.red,
              name: 'Examen',
              imgName: 'task'
            )
           
          ]
          ),

          Category(name: 'Biomoléculas',
       icon: Icons.favorite,
        color: Colors.red,
         imgName: 'moleculas',
         imageName2: 'algebra2',
          subCategories: [
            SubCategory(
              color: Colors.red,
              name: 'Lección',
              imgName: 'leccion'
            ),
            SubCategory(
              color: Colors.red,
              name: 'Ejercicios',
              imgName: 'task2'
            ),
            SubCategory(
              color: Colors.red,
              name: 'Examen',
              imgName: 'task'
            )
          ]
          ),
          Category(name: 'Cuerpo Humano',
       icon: Icons.favorite,
        color: Colors.indigo,
         imgName: 'cuerpo',
         imageName2: 'cuerpo2',
          subCategories: [
            SubCategory(
              color: Colors.red,
              name: 'Lección',
              imgName: 'leccion'
            ),
            SubCategory(
              color: Colors.red,
              name: 'Ejercicios',
              imgName: 'task2'
            ),
            SubCategory(
              color: Colors.red,
              name: 'Examen',
              imgName: 'task'
            )
          ]
          ),
           Category(name: 'Alimentos',
       icon: Icons.favorite,
        color: Colors.amber,
         imgName: 'alimento',
         imageName2: 'alimento2',
          subCategories: [
            SubCategory(
              color: Colors.red,
              name: 'Lección',
              imgName: 'leccion'
            ),
            SubCategory(
              color: Colors.red,
              name: 'Ejercicios',
              imgName: 'task2'
            ),
            SubCategory(
              color: Colors.red,
              name: 'Examen',
              imgName: 'task'
            )
          ]
          ),
          Category(name: 'Electricidad',
       icon: Icons.favorite,
        color: Colors.indigo,
         imgName: 'electricidad2',
         imageName2: 'electricidad',
          subCategories: [
            SubCategory(
              color: Colors.red,
              name: 'Lección',
              imgName: 'leccion'
            ),
            SubCategory(
              color: Colors.red,
              name: 'Ejercicios',
              imgName: 'task2'
            ),
            SubCategory(
              color: Colors.red,
              name: 'Examen',
              imgName: 'task'
            )
          ]
          ),

    ];
  }
}