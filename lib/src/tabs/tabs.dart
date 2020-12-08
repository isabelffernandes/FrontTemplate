import 'package:flutter/material.dart';
import 'package:fronttemplate/src/pages/TelaInicial.dart';
import 'package:fronttemplate/src/pages/carrinhoPage.dart';
import 'package:fronttemplate/src/pages/categoriasPage.dart';
import 'package:fronttemplate/src/pages/produtosPage.dart';

class Tabs extends StatefulWidget {
  
  @override
   _TabsState createState() => _TabsState();
}

 class _TabsState extends State<Tabs> {
  int  abaAtual = 0;
  TelaInicial telaInicial;
  carrinhoPage carrinho;
  produtosPage produtos;
  categoriasPage categorias;

  List<Widget> pages ;
  Widget pagAtual;

  @override
  // ignore: override_on_non_overriding_member
  void initState() {
    telaInicial = TelaInicial();
    carrinho= carrinhoPage();
    produtos = produtosPage();
    categorias = categoriasPage();

    pages = [telaInicial, carrinho, produtos, categorias];
    pagAtual = telaInicial;
    super.initState();
  }

  @override
  // ignore: unused_element
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            abaAtual == 0 ? "Página Inicial"
              : abaAtual == 1 ? "Carrinho"
              : abaAtual == 2 ? "Produtos" : "Categorias",

            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.bold
              ),  
          ),
          centerTitle: true,
          actions: <Widget> [
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
                ),
                onPressed: () {} ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {},
            )    
          ],
        ),
        //colocar drawer 

        resizeToAvoidBottomPadding: false,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: abaAtual,
          onTap: (index) {
            setState(() {
              abaAtual = index;
              pagAtual = pages[index];
            });
          },
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: "Carrinho",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.photo_library,
              ),
              label: "Produtos",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: "Categoria",
            ),
          ],
        ),

//trazer conteudo da pagina home
      body: pagAtual,

        ),
        );
  }

  }




