/* 
5. ⛽ Posto de gasolina

Seu carro percorre 12 km por litro.

Leia:

tempo da viagem em horas;
velocidade média em km/h.

Descubra:

distância percorrida;
quantidade de combustível utilizada.

Entrada:

5 80

Saída:

Distancia: 400 km
Combustivel: 33.333 litros

Conceitos: int, double, multiplicação, divisão e toStringAsFixed().
*/

double calcuDistancia(velocidade, hora) {
    return velocidade * hora;
}

double gastoCombustivel(distancia) {
    return distancia / 12;
}


import 'dart:io';

vold main() {
    stdout.write("Digite a quantidade de horas da viagem");
    double hora = double.parse(stdin.readLineSync()!);
    stdout.write("Digite a quantidade a velocidade do veiculo, em km/h, durante a viagem");
    int km = int.parse(stdin.readLineSync()!);

    double distancia = calcuDistancia(km, hora);
    double combustivel = gastoCombustivel(distancia)


    print("Distancia: &{distancia.toStringAsFixed(2)}");
    print("Combustivel: ${combustivel.toStringAsFixed}");
}