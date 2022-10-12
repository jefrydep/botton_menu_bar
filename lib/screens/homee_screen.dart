
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeedf2),
      body: ListView(
        children: [
          Container(
            child: Column(

              children: [
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Good Mornig'),
                          Text('Book tickets',style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold),)
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.flutter_dash,size: 60,)

                    ],
                  ),
                ),
                 
              


              ],
            ),
          )
        ],
      )
    );
    
  }
}