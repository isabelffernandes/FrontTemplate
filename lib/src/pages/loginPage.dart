import 'package:flutter/material.dart';
import 'package:fronttemplate/src/componentes/botao.dart';
import 'package:fronttemplate/src/pages/cadastroPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _toggleVisibility = true;

  Widget _emailtxt() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Digite seu Email",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      )
    );
  }

  Widget _senhatxt() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Digite sua Senha",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2B2), 
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _toggleVisibility = !_toggleVisibility;
            });
          },
          icon: _toggleVisibility
          ? Icon(Icons.visibility_off)
          : Icon(Icons.visibility), 
        ),
      ),
      obscureText: _toggleVisibility,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Image(
              image: AssetImage("assets/images/login.gif"),
              height: 140.0,
              width: 140.0,
            ),
            SizedBox(height: 15.0,),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget> [
                    _emailtxt(),
                    SizedBox(height: 20.0,),
                    _senhatxt(),
                  ],
              ),
            ),
        ),
        SizedBox(height: 30.0,),
        Button(btnText: "Logar"),
        Divider(height: 35.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text(
              "Não possui Cadastro?",
              style: TextStyle(
                color: Color(0xFFBDC2CB),
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
              ),
              SizedBox(width:10.0),
              GestureDetector(
                onTap: () {
            
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => cadastroPage() ));
                },
                child: Text(
                "Cadastre-se",
                style: TextStyle(
                 color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
                ),
                ),
          ],
        ),
              SizedBox(height:10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Recuperar a Senha?",
                    style: TextStyle(
                 color: Colors.redAccent,
                fontWeight: FontWeight.w400,
                fontSize: 15.0),
                  ),
              ],),
          ],
        ),

          
    ),
      
    );
  }
}