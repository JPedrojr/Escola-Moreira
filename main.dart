import 'package:flutter/material.dart';

import './alco_gas.dart';

void main(){
  runApp(Main());
}

class Main extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alcool e Gasolina",
      home: Alco_Gas(),
    );
  }
}