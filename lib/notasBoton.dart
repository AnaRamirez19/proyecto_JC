import 'package:flutter/material.dart';

import 'notas.dart';

class NotasBoton extends StatefulWidget {

  @override
  _NotasBotonState createState() => _NotasBotonState();
}

class _NotasBotonState extends State<NotasBoton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Nueva nota'),
         backgroundColor: Colors.orange,
       ),
       body: Padding(
         padding: EdgeInsets.all(8.0),
         child: Center(
           child: ListView(
             children: <Widget>[
               SizedBox(height: 20.0),
               _tituloNota(),
               SizedBox(height: 20.0),
               _contenidoNota(),
               SizedBox(height: 350.0),
               _bottonGuardar(),
             ],
           ),
         ),
       ),
    );
  }
}

Widget _tituloNota(){
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: 'Titulo',
          ),
          onChanged: (value){

          },
        ),
      );
    } 
  );
}

Widget _contenidoNota(){
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.name,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Contenido',
          ),
          onChanged: (value){
            
          },
        ),
      );
    } 
  );
}


Widget _bottonGuardar(){
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot){
      return RaisedButton(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Text('Guardar',
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
        color: Colors.orange,
        onPressed: (){
          Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => Notas(),
          ),
        );
        }
      );
    },
  );
}