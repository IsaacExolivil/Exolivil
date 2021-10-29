import 'package:exolivil_v2/model/category.dart';
import 'package:exolivil_v2/data/dataAnalitico.dart';
import 'package:exolivil_v2/pages/selectcategory.dart';
import 'package:exolivil_v2/widgets/categorycard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/menuItem.dart';

// ignore: must_be_immutable
class PensamientoAnalitico extends StatefulWidget {
  List<Category> categories = DataAnalitico.getMockedCatgeories();

  PensamientoAnalitico({Key? key}) : super(key: key);

  @override
  _PensamientoAnaliticoState createState() => _PensamientoAnaliticoState();
}

class _PensamientoAnaliticoState extends State<PensamientoAnalitico> {
  List<Category> categories = DataAnalitico.getMockedCatgeories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'Selecione una lección',
                    
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(bottom: 100),
                    itemCount: categories.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return CategoryCard(
                        category: categories[index],
                        onCardClick: () {
                          //Navegar a otra pagina
                          Navigator.push(
                            context,
                             MaterialPageRoute(
                               builder: (context) => SelectCategoryPage(
                                 selectedCategory: DataAnalitico.getMockedCatgeories()[index]

                               ),
                               ));
                        }
                        );
                    },
                  ),
                )
              ],
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                //Agregamos menu
                child: MenuItem(),
                )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pensamiento Cientifico'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 6),
            padding: const EdgeInsets.all(6),
            child: ClipOval(
              child: Image.asset(
                'assets/isaac.jpg',
              ),
            ),
          )
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.green.shade900, Colors.green]),
          ),
        ),
      ),
    );
  }
}
