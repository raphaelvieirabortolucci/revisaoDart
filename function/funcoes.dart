import "dart:io";


double imc(double peso, double altura) {
  return peso / (altura * altura);
}

void main() {
  stdout.write("Fala peso sua beleia: ");
  double peso = double.parse(stdin.readLineSync()!);
  stdout.write("Fala peso sua altura: ");
  double altura = double.parse(stdin.readLineSync()!);

  double Imc = imc(peso, altura);

  print("seu imc é: ${Imc.toStringAsFixed(2)}");
}