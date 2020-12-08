import 'package:flutter/material.dart';

class CardCarrinho extends StatefulWidget{
  _CardCarrinhoState createState() => _CardCarrinhoState();
}

class _CardCarrinhoState extends State<CardCarrinho>{

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFD3D3D3), width: 2.0),
              borderRadius: BorderRadius.circular(10.0),
              ),
              width: 45.0,
              height: 73.0,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  ),
                  child: Column(
                    children: <Widget> [
                      InkWell(
                        onTap: () {},
                        child: Icon(Icons.keyboard_arrow_up, 
                          color: Color(0xFFD3D3D3))),
                      Text(
                        "0",
                        style: TextStyle(fontSize: 18.0, color: Colors.grey),
                      ),   
                      InkWell(
                        onTap: () {},
                        child: Icon(Icons.keyboard_arrow_down,
                          color: Color(0xFFD3D3D3))),
                    ],
                  ),
              ),
          ),                      
                  SizedBox(
                    height: 10.0,
                    ),
                    Container(
              height: 70.0,
              width: 70.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/01.png"),
                fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(35.0),
              boxShadow: [
               BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5.0,
                  offset: Offset(0.0, 2.0)),
              ]),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Text(
                    "X-Tudão", 
                    style: TextStyle(
                      fontSize: 16.0,
                       fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "R\u{0024} 10.00",
                     style: TextStyle(
                       fontSize: 16.0, 
                       fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    height: 25.0,
                    width: 120.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget> [
                        Row(
                          children: <Widget> [
                            Text("Sanduíches",
                            style: TextStyle(
                              color: Color(0xFFD3D3D3),
                              fontWeight: FontWeight.bold
                            )
                            ),
                            SizedBox(height: 5.0),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "x",
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          ),
                        ),
                      ),
                         SizedBox(width: 10.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Icon(Icons.cancel, color: Colors.grey),
              ),   
        ],      
            )
      )
        
    );
  }
}