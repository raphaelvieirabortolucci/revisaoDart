// Você decidiu guardar dinheiro em um cofrinho.

// Leia dois valores inteiros, representando quanto você colocou no cofrinho em dois dias diferentes.

// Calcule e mostre:

// o total guardado;
// a diferença entre os dois valores;
// o dobro do total.

// Entrada:

// 20 35

// Saída esperada:

// Total: 55
// Diferenca: 15
// Dobro do total: 110

// Conceitos: int, split(), parse(), +, -, *, print().


import 'dart:io';

void main(){
    stdout.write("digite o dinheiro guardado no primeiro dia, sem contar os centavos");
    int num1 = int.parse(stdin.readLineSync()!);
    stdout.write("digite o dinheiro guardado no segundo dia, sem contar os centavos");
    int num2 = int.parse(stdin.readLineSync()!);

    int total = num1 + num2;
    int diferencia;
    int dobro = total * 2;

    if (num1 > num2){
        diferencia = num1 - num2;
    } else {
        diferencia = num2 - num1;
    }

    print("Total: $total");
    print("Diferenca: $diferencia");
    print("Dobro do total: $dobro");

}
