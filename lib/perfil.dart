import 'package:flutter/material.dart';

import 'login.dart';

class Perfil extends StatefulWidget {

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text('Perfil'),
          backgroundColor: Colors.orange,
       ),
       body: Center(
         child: Column(
           children: <Widget>[
             Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.network('https://thumbs.dreamstime.com/b/circular-icono-del-avatar-hombre-de-negocios-silueta-blanca-en-negro-aislado-blanco-110961839.jpg', height: 200.0),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 15.0),
               child: Container(
                 child: Text('Ana Maria Ramirez',
                 style: TextStyle(
                   fontSize: 25.0,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 15.0),
               child: Container(
               child: Text('Medellin - Antioquia',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
               ),
             ),
             ),
             Container(
                 padding: const EdgeInsets.only(top: 100.0, bottom: 40.0),
              child: Image.asset('assets/Logo.png', height: 100.0),
             ),
             _bottonSalir(),
           ],
         ),
       ),
    );
  }
}

Widget _bottonSalir(){
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot){
      return RaisedButton(
        child: Container(
          padding: EdgeInsets.only(top:0.0),
          child: Text('Salir',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),  
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0)
        ),
        color: Colors.black,
        onPressed: (){
          Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => Login(),
          ),
        );
        }
      );
    },
  );
}

