import 'package:exolivil_v2/pages/pages.dart';
import 'package:exolivil_v2/widgets/menuItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 380,
            child: GridView(
              children: [
                //Ruta para tener el navigator en un gridview, se extrae en Ikwell//
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PensamientoAnalitico()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightBlue[300]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/ciencia2.png'),
                        const SizedBox(height: 12),
                        const Text(
                          ('Pensamiento cientifico'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                //2 opcion//
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Matematicas()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/maths2.png'),
                        const SizedBox(height: 12),
                        const Text(
                          ('Matemáticas'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                //opcion 3
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Ingles()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red.shade500),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/ingles2.png'),
                        const SizedBox(height: 12),
                        const Text(
                          ('Ingles'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                //opción 4
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lectura()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightBlue[400]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/lectura.png'),
                        const SizedBox(height: 12),
                        const Text(
                          ('Comprensión lectora'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: 50,
            child: Text(
              'Aprende algo nuevo hoy ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Card(
                  //Primera carta
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Colors.white,
                  child: SizedBox(
                    width: 70,
                    height: 120,
                    child: ListTile(
                      onTap: () {
                        print('hola mundo');
                      },
                      title: Column(
                        children: [
                          Image.asset('assets/examen.png'),

                          // Icon(Icons.auto_stories, size: 60, color: Colors.blue),
                          Text('Examen Rapido',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  //Segunda carta
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Colors.white,
                  child: SizedBox(
                    width: 150,
                    height: 120,
                    child: ListTile(
                      onTap: () {
                        print('Hola');
                      },
                      title: Column(
                        children: [
                          Icon(Icons.bolt, size: 65, color: Colors.yellow),
                          Text('Simulador Rápido',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),

          Container(
            alignment: Alignment.bottomCenter,
            height: 50,
            child: Text(
              'Realiza tu test vocacional ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),

          GestureDetector(
            onTap: () {
                        print('Hola amorcito');
                      },
            child: Card(
              elevation: 5,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Container(
                child: Column(
                  children: [FadeInImage(placeholder: AssetImage('assets/user21.png'),
                   image: AssetImage('assets/test.png')
                   ),
                   Padding(padding: const EdgeInsets.all(8.0),
                   child: Text('Completa el test vocacional y luego obtendras tu resultado de tu verdadera vocación.',
                   style: TextStyle(color: Colors.black, fontSize: 17),
                   ),
                   ),
                   ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            child: Text('hola sharon'),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            child: Text('hola sharon'),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            child: Text('hola sharon'),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            child: Text('hola sharon'),
          ),
        ],
      ),
    );
  }
}
