/*
8. 🎮 Classificação do jogador

Um jogo possui três classificações:

0 até 999 → Bronze
1000 até 1999 → Prata
2000 até 2999 → Ouro
3000 ou mais → Diamante

Leia a pontuação e mostre a classificação.

Entrada:

2350

Saída:

Classificacao: Ouro

Conceitos: if, else if, else, >=, <=.
*/



import 'dart:io';

void main() {
    stdout.write("digite a sua pontuacao");
    int pontos = int.parse(stdin.readLineSync()!);

    if (pontos >= 3000) {
        print("Classificacao = Diamante");
    } else if (pontos >= 2000) {
        print("Classificacao = Ouro");
    } else if (pontos >= 1000) {
        print("Classificacao = prata");
    } else {
        print("Classificacao = bronze");
    }
}