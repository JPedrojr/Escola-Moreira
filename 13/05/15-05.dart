import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  final List <String> dataList = [

    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        title: Text('Exemplo GridView'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,

        ),

        itemCount: dataList.length,

        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Center(
              child: Text(
                dataList[index],
                style: TextStyle(fontSize: 20.0),
              ),
             ),
          );
        },
      ),
      ),
    );
  }
}