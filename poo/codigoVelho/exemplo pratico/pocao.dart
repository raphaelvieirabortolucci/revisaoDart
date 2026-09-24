import 'item.dart';

class Pocao extends Item {
  int vida;
  int mana;
  int stamina;
  String raridade;
  Pocao(String nome, int preco, this.raridade, this.vida, this.mana, this.stamina)
      : super(nome, preco);

  @override
  void exibirInfo() {
    print("Pocao: $nome | Ouro: $preco | Raridade: $raridade | PH recuperados: $vida | PM recuperados: $mana | PV recuperados: $stamina");
 }
}