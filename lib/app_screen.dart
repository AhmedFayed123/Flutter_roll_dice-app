import 'package:flutter/material.dart';
import 'dart:math';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.red,
              Colors.blue,
            ]
          )
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'lib/assets/images/dice-${activeDice}.png',
                width: 250,
              ),
              SizedBox(height: 20,),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 20)
                ),
                  onPressed: rollDice,
                  child: Text('Roll Dice'),
              )
            ],
          )
        ),
      ),
    );
  }

  int activeDice =1;
  final random=Random();
  void rollDice(){
    setState(() {
      activeDice=random.nextInt(6)+1;
    });
  }
}
