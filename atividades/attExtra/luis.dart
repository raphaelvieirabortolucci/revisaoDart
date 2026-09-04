import 'dart:io';

void main() {
  stdout.write("Fala o valor de lancamento: ");
  double vL = double.parse(stdin.readLineSync()!);
  
  stdout.write("Fala o valor de atual: ");
  double vAtual = double.parse(stdin.readLineSync()!);
  
  stdout.write("Fala o ano de lancamento: ");
  double anoL = double.parse(stdin.readLineSync()!);
  
  stdout.write("Fala o ano atual: ");
  double anoAtual = double.parse(stdin.readLineSync()!);
  
  stdout.write("Fala a kilometragem: ");
  int km = int.parse(stdin.readLineSync()!);
  
  double dp = vL - vAtual;
  
  double dpPorcentagem = ((vL - vAtual) * 100)/vL;
  
  double dpKm = (vL - vAtual) / km;
  
  double dpTotal = vL - dp - dpKm;
  
  print("A kilometragem é de: $km");
  print("A depreciação é de: ${dp.toStringAsFixed(2)}");
  print("A porcentagem da depreciação é de: ${dpPorcentagem.toStringAsFixed(2)}");
  print("A depreciação por km rotado é de: ${dpKm.toStringAsFixed(2)}");
  print("A depreciação total é de: ${dpTotal.toStringAsFixed(2)}");
  
}