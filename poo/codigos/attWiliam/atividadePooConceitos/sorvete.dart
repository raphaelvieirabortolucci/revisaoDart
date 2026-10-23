/*
Instruções
Demonstre a aplicação prática dos pilares e conceitos da POO utilizando a linguagem Dart, por meio do desenvolvimento de uma aplicação completa e da redação de um relatório técnico.

Desenvolver uma aplicação completa em Dart que simule um sistema real (ex: sistema bancário). O código deve obrigatoriamente conter todos os requisitos de POO.
Coloque o código junto com o relatório de pesquisa de todos os conceitos discutidos em aula.
 */

class Sorvete {
  String sabor;
  double preco;

  Sorvete(this.sabor, this.preco);

  void mostrarDetalhes() {
    print('Sabor: $sabor, Preço: R\$ $preco');
  }
}