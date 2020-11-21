import 'package:flutter/material.dart';
import 'package:proyecto_jc/perfil.dart';

import 'notasBoton.dart';

class Notas extends StatefulWidget {

  @override
  _NotasState createState() => _NotasState();
}

class _NotasState extends State<Notas> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    NotasBoton(),
    Perfil(),
  ];
  void onTappedBar(int index){
    setState((){
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis notas'),
        backgroundColor: Colors.orange,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.orange,
        selectedItemColor: Colors.white70,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14.0,
        unselectedFontSize: 14.0,
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            title: Text('Notas'),
            icon: Icon(Icons.border_color)
          ),
          BottomNavigationBarItem(
            title: Text('Perfil'),
            icon: Icon(Icons.person)
          ),
        ],
      ),
    );
  }
}



