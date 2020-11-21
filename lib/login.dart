import 'package:flutter/material.dart';
import 'notas.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset('assets/Logo.png', height: 200.0),
                ),
                SizedBox(height: 50.0),
                _userTextField(),
                SizedBox(height: 20.0),
                _passwordTextField(),
                SizedBox(height: 50.0),
                _bottonLogin(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('         Aplicación desarrollada por: Ana Maria Ramírez',
          ),
        ),
      ),
    );
  }
}

Widget _userTextField(){
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            icon: Icon(
              Icons.account_circle,
            ),
            hintText: 'Usuario',
            labelText: 'Nombre de usuario',
          ),
          onChanged: (value){

          },
        ),
      );
    } 
  );
}

Widget _passwordTextField(){
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.name,
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
            ),
            hintText: 'Contraseña',
            labelText: 'Contraseña',
          ),
          onChanged: (value){
            
          },
        ),
      );
    } 
  );
}

Widget _bottonLogin(){
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot){
      return RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: Text('Ingresar',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),  
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0)
        ),
        elevation: 20.0,
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

