/*
10. 🛒 Carrinho de compras

Você foi ao mercado.

Leia três produtos, cada um contendo:

quantidade;
preço unitário.

Calcule o preço total da compra.

Entrada:

2 10.50
3 5.00
1 25.90

Saída:

Total: R$ 61.90

Conceitos: split(), int, double, multiplicação, soma e toStringAsFixed(). 
*/

import 'dart:io';

double multi(int a, double b) {
    return a * b;
}

double somaTotal(double a, double b, double c) {
    return a + b + c;
}

void main() {

    var entrada1 = stdin.readLineSync()!.split(' ');
    var entrada2 = stdin.readLineSync()!.split(' ');
    var entrada3 = stdin.readLineSync()!.split(' ');

    int quantiProd1 = int.parse(entrada1[0]);
    double precoProd1 = double.parse(entrada1[1]);

    int quantiProd2 = int.parse(entrada2[0]);
    double precoProd2 = double.parse(entrada2[1]);

    int quantiProd3 = int.parse(entrada3[0]);
    double precoProd3 = double.parse(entrada3[1]);

    double totalProd1 = multi(quantiProd1, precoProd1);
    double totalProd2 = multi(quantiProd2, precoProd2);
    double totalProd3 = multi(quantiProd3, precoProd3);

    double totalALL = somaTotal(totalProd1, totalProd2, totalProd3);

    print("Total: R\$ ${totalALL.toStringAsFixed(2)}");
}
