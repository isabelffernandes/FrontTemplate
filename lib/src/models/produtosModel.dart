class ProdutosModel{
   final String id;
    final String nome;
    final String imagem;
    final String categoria;
    final double valor;
    final double desconto;
    final double avaliacoes;

    ProdutosModel(
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
  ProdutosModel(
    id: "1", 
    imagem: "assets/imagens/pancakes.jpeg",
    nome: "Sanduíches Carne",
    categoria: "Sanduíches",
    valor: 50,
    desconto: 3,
    avaliacoes: 5
  ),

  ProdutosModel(
    id: "2", 
    imagem: "assets/imagens/pizza.jpeg",
    nome: "Pizza Calabresa",
    categoria: "Pizza",
    valor: 40,
    desconto: 2,
    avaliacoes: 3
  ),

    ProdutosModel(
    id: "3", 
    imagem: "assets/imagens/03.png",
    nome: "Comida Caseira",
    categoria: "Comida",
    valor: 45,
    desconto: 2,
    avaliacoes: 2
  ),
];