import 'item.dart';

class Arma extends Item {
  int dano;
  String raridade; 
  String material;
  Arma(String nome, int preco, this.dano, this.raridade, this.material)
      : super(nome, preco);

  @override
  void exibirInfo() {
    print("Arma: $nome | Dano: $dano | Ouro: $preco | Raridade: $raridade | Material: $material");
 }
}