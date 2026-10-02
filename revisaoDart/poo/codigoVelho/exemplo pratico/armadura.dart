import 'item.dart';

class Armadura extends Item {
  int defesa;
  String raridade;
  String material;
  Armadura(String nome, int preco, this.defesa, this.raridade, this.material)
      : super(nome, preco);

  @override
  void exibirInfo() {
    print("Armadura: $nome | Defesa: $defesa | Ouro: $preco | Raridade: $raridade | Material: $material");
  }
}