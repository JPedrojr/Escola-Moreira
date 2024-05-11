import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool vs Gasolina',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      home: AlcoholVsGasoline(),
    );
  }
}

class AlcoholVsGasoline extends StatefulWidget {
  @override
  _AlcoholVsGasolineState createState() => _AlcoholVsGasolineState();
}

class _AlcoholVsGasolineState extends State<AlcoholVsGasoline> {
  TextEditingController _alcoholController = TextEditingController();
  TextEditingController _gasolineController = TextEditingController();
  String _result = '';

  void _calculate() {
    double alcoholPrice = double.tryParse(_alcoholController.text) ?? 0;
    double gasolinePrice = double.tryParse(_gasolineController.text) ?? 0;

    if (alcoholPrice == 0 || gasolinePrice == 0) {
      setState(() {
        _result = 'Por favor, insira valores válidos.';
      });
      return;
    }

    double result = alcoholPrice / gasolinePrice;

    if (result < 0.7) {
      setState(() {
        _result = 'É mais vantajoso utilizar Álcool.';
      });
    } else {
      setState(() {
        _result = 'É mais vantajoso utilizar Gasolina.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Alcool ou Gasolina'),
      ),
      backgroundColor: Colors.purpleAccent,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _alcoholController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Preço do Álcool',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _gasolineController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Preço da Gasolina',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculate,
              child: Text('Calcular'),
              
            ),
            SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}