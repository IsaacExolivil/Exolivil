import 'package:flutter/material.dart';

class MenuItem extends  StatelessWidget {

  //Menu de navegación 
  

  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        blurRadius: 20,
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset.zero),
                  ]),
                  height: 80,
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //Menu de navegación
                      ClipOval(
                        child: Material(
                          child: IconButton(
                            icon: Icon(Icons.favorite, color: Colors.green[400]),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      //2
                      ClipOval(
                        child: Material(
                          child: IconButton(
                            icon:  Icon(Icons.supervised_user_circle_outlined, color: Colors.green[400]),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      //3
                      ClipOval(
                        child: Material(
                          child: IconButton(
                            icon:  Icon(Icons.settings, color: Colors.green[400]),
                            onPressed: () {},
                          ),
                        ),
                      ),
                       //4
                       ClipOval(
                        child: Material(
                          child: IconButton(
                            icon:   Icon(Icons.shopping_cart, color: Colors.green[400]),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      
                        
                        
                    ],
                  ),
                );
  }
}