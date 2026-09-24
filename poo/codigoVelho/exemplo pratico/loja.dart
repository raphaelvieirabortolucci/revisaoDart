import 'item.dart';
import 'arma.dart';
import 'armadura.dart';
import 'pocao.dart';

void main() {

  Arma espada = Arma("Espada de aço", 100, 15, "elfica", "aço");
  Armadura peitoral = Armadura("Peitoral de daédrico", 150, 20, "mitico", "pele de dragão");
  Pocao pocao = Pocao("poção suprema", 550, "lendaria", 300, 150, 100);
  // Setter
  espada.preco = 120;

  // Getter
  print("Preço da espada: ${espada.preco}");

  // Métodos
  espada.vender();
  peitoral.vender();

  print("");

  // Polimorfismo
  List<Item> loja = [espada, peitoral, pocao];

  for (var item in loja) {
    item.exibirInfo();
  }
}