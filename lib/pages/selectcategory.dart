import 'package:exolivil_v2/model/category.dart';
import 'package:exolivil_v2/pages/examen.dart';
import 'package:exolivil_v2/widgets/categoryicon.dart';
import 'package:flutter/material.dart';

class SelectCategoryPage extends StatelessWidget {
  Category? selectedCategory;

  SelectCategoryPage({this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            Text(this.selectedCategory!.name!),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 6),
            padding: const EdgeInsets.all(6),
            child: ClipOval(
              child: Image.asset(
                'assets/user21.png',
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(2),
        child: Center(
          child: Column(
            children: [
              _card(),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.indigo,
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 25, right: 25),
                  child: Text(
                    'Seleciona que deseas hacer hoy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                children: List.generate(
                    this.selectedCategory!.subCategories!.length, (index) {
                  return GestureDetector(
                    //Navegación entre paginas del array a personalizado//
                    onTap: () {
                      String navegacion =
                          selectedCategory!.subCategories![index].name!;

                      switch (navegacion) {
                        case 'Examen':
                          {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>Examen()));
                            break;
                          }
                        case 'Lección':
                          {
                            print('Hola amor');
                            break;
                          }
                        case 'Ejercicios':
                          {
                            print('Hola sharon');
                            break;
                          }

                        default:
                      }
                      //Navegacion por if la cambiamos por switch
                      //if (selectedCategory!.subCategories![index].name! == 'Examennn'){
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Hola()));
                      //  }
                      //   else {
                      //    print(selectedCategory!.subCategories![index].name!);
                      //   }
                    },

                    child: Container(
                      child: Column(
                        children: [
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.white,
                            child: SizedBox(

                              child: Image.asset(
                                'assets/' +
                                    this
                                        .selectedCategory!
                                        .subCategories![index]
                                        .imgName! +
                                    '.png',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            this.selectedCategory!.subCategories![index].name!,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _card() {
    return Card(
      child: Container(
        height: 230,
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                    'assets/' + this.selectedCategory!.imgName! + '.png',
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.transparent
                      ]),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/' + this.selectedCategory!.imageName2! + '.png',
                      width: 55,
                      height: 55,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      this.selectedCategory!.name!,
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  print('hola');
                },
                child: CategoryIcon(
                    color: this.selectedCategory!.color!,
                    iconName: this.selectedCategory!.icon!),
              ),
            )
          ],
        ),
      ),
    );
  }
}
