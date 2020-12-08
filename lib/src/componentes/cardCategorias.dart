import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:fronttemplate/src/models/categoriasModel.dart';

class CardCategoria extends StatelessWidget{
  final String nomeCat;
  final String imgCat;
  final int totalProd;

  CardCategoria(
    {
      this.nomeCat,
      this.imgCat,
      this.totalProd
    }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 20.0),
        child: Card(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              children: <Widget> [
                Image(
                  image: AssetImage(imgCat),
                  height: 65.0,
                  width: 65.0,
                  ),
                  SizedBox(width: 20.0,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      Text(nomeCat, style:TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
                      Text("$totalProd Produtos", style:TextStyle(fontSize: 14.0)),
                    ]
                  )
              ]
            )
          )      
        )    
        );
     }

}
    