import 'package:flutter/material.dart';
import 'package:fronttemplate/src/componentes/cardProduto.dart';
import 'package:fronttemplate/src/componentes/buscar.dart';
import 'package:fronttemplate/src/componentes/cabecalho.dart';
import 'package:fronttemplate/src/componentes/categorias.dart';
import 'package:fronttemplate/src/models/produtosModel.dart';
//import 'package:fronttemplate/src/dados/produtosDados.dart';

class TelaInicial extends StatefulWidget {
  
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {

  List<ProdutosModel> _produtos = produtos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
        children: <Widget> [
         Cabecalho(),
         AreaCategoria(),
         Buscar(),
         SizedBox(height: 20.0,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Text(
               "Produtos mais vendidos",
               style: TextStyle(
                 fontSize: 16.0,
                 fontWeight: FontWeight.w400,
               ),
             ),
             GestureDetector(
               onTap: () {
                 print("Pressionou Pressed");
               },
               child: Text(
                 "Ver Todos",
                 style: TextStyle(
                   color: Colors.orangeAccent,
                   fontWeight: FontWeight.bold,
                   fontSize: 16.0,
                 ),
               ),
             ),
         ],
         ),
         SizedBox(height: 20.0,),
         Column(
           children: _produtos.map(_produtosItens).toList(), 
         ),
        ],
      ),
    );
  }

  Widget _produtosItens(ProdutosModel produtos){
    return Container(
      margin: EdgeInsets.only(
      bottom: 26.0
      ),
    child: CardProduto(
      id: produtos.id,
      nome: produtos.nome,
      imagem: produtos.imagem,
      categoria: produtos.categoria,
      valor: produtos.valor,
      desconto: produtos.desconto,
      avaliacoes: produtos.avaliacoes,
    ),
     );
  }
}
