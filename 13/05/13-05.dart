import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
 
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
 
  void _onItemTapped (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
 
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Bottom NAvigation Bar Example'),
      ),
      body: Center(
        child: Text(
          'Bottom NAvigation Bar Demo: Item $_selectedIndex',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      persistentFooterButtons: <Widget>[
        ElevatedButton(
          onPressed: () {
           
            print('Primeiro botão de rodapé pressionado!');
          },
          child: Text('Botão 1'),
        ),
        ElevatedButton(
          onPressed: () {
           
            print('Segundo botão de rodape pressionado!');
          },
          child: Text('Botão 2'),
        ),
      ],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         
          print('Botão flutuante pressionado!');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
