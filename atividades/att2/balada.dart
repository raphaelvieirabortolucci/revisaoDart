/*
7. 🔞 Entrada no evento

Você está ajudando na entrada de um evento.

Leia:

idade;
se a pessoa possui ingresso (1 para sim, 0 para não).

A pessoa pode entrar somente se:

tiver 18 anos ou mais;
possuir ingresso.

Se puder:

Entrada permitida

Caso contrário:

Entrada negada

Entrada:

18 1

Conceitos: if, else, &&, >=.
*/

import 'dart:io';

void main() {
    stdout.write("digite a sua idade");
    int idade = int.parse(stdin.readLineSync()!);
    stdout.write("você tem o convite (sim/nao)");
    String resposta = stdin.readLineSync();

    if(idade >= 18 && resposta?.toLowerCase() == "sim"){
        print("Entrada permitida");
        }
    else{
        print("Entrada negada")
    }
}