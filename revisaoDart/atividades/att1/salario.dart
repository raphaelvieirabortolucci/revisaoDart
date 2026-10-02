/*Salário do vendedor

Você começou a trabalhar como vendedor.

Leia:

salário fixo;
valor total das vendas.

Você recebe 15% de comissão sobre as vendas.

Calcule o salário final.

Entrada:

1200.00 500.00

Saída:

Salario final: 1275.00

Conceitos: double, função, return, multiplicação e toStringAsFixed().
*/




import 'dart:io';

double vendas(double A, double B){
    return A + (B * 0.15);
}


void main(){

    stdout.write("digite o seu salario");
    double salario = double.parse(stdin.readLineSync()!);

    stdout.write("digite o quanto lucro você fez com suas vendas");
    double venda = double.parse(stdin.readLineSync()!);


    double total = vendas(salario, venda);


    print("Salario final: ${total.toStringAsFixed(2)}");

}