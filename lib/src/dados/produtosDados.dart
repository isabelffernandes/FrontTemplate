//import 'package:fronttemplate/src/models/produtosModel.dart';

class ProdutosD{
   final String id;
    final String nome;
    final String imagem;
    final String categoria;
    final double valor;
    final double desconto;
    final double avaliacoes;

     ProdutosD(
      {
        this.id,
        this.nome,
        this.imagem,
        this.categoria,
        this.valor,
        this.desconto,
        this.avaliacoes
      }
    );
}

final produtos = [
  ProdutosD(
    id: "1", 
    imagem: "assets/imagens/01.png",
    nome: "Sanduíches Carne",
    categoria: "Sanduíches",
    valor: 50,
    desconto: 3,
    avaliacoes: 5
  ),

  ProdutosD(
    id: "2", 
    imagem: "assets/imagens/02.png",
    nome: "Pizza Calabresa",
    categoria: "Pizza",
    valor: 40,
    desconto: 2,
    avaliacoes: 3
  ),

   ProdutosD(
    id: "3", 
    imagem: "assets/imagens/03.png",
    nome: "Comida Caseira",
    categoria: "Comida",
    valor: 45,
    desconto: 2,
    avaliacoes: 2
  ),

];