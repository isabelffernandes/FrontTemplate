import 'package:flutter/cupertino.dart';
import 'package:fronttemplate/src/componentes/cardCategorias.dart';
import 'package:fronttemplate/src/dados/categoriasDados.dart';
import 'package:fronttemplate/src/models/categoriasModel.dart';

class AreaCategoria extends StatelessWidget{
  final List<CategoriasModel> _categorias = categorias;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      margin: EdgeInsets.only( top: 10.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal, 
        itemCount: _categorias.length,
        itemBuilder: (BuildContext context, int index) {
          return CardCategoria(
            nomeCat: _categorias[index].nomeCat,
            totalProd: _categorias[index].totalProd,
            imgCat: _categorias[index].imgCat,
          );
        },
      )
    );
  }
}