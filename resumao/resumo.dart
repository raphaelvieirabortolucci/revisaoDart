// Importa a biblioteca dart:io.
// Ela permite usar stdin e stdout para entrada e saída de dados.
import 'dart:io';

// Importa a biblioteca dart:math.
// Ela permite usar funções matemáticas como sqrt() e pow().
import 'dart:math';


// Esta é uma função.
// Ela recebe dois números double e retorna um double.
double calcularSalario(double salario, double vendas) {
  // Calcula o salário + 15% das vendas.
  double total = salario + (vendas * 0.15);

  return total;
}

// Função principal.
// Todo programa Dart começa sua execução pelo main().
void main() {

  // =========================================================
  // 1. ENTRADA DE DADOS
  // =========================================================

  // stdin.readLineSync() lê uma linha digitada.
  // O ! informa ao Dart que não será null.
  //
  // split(' ') separa os valores quando existe um espaço.
  //
  // Exemplo:
  // "18 700.00 1000.50"
  //
  // vira:
  // ["18", "700.00", "1000.50"]
  var entrada = stdin.readLineSync()!.split(' ');


  // =========================================================
  // 2. CONVERSÃO DOS VALORES
  // =========================================================

  // int.parse() transforma uma String em número inteiro.
  int idade = int.parse(entrada[0]); // "entrada[0]" --> pega o primeiro valor da var salario, lembra que em lista, começa em 0

  // double.parse() transforma uma String em número decimal.
  double salario = double.parse(entrada[1]); // "entrada[1]" --> pega o segundo valor da var salario

  double vendas = double.parse(entrada[2]); // "entrada[2]" --> pega o terceiro valor da var salario


  // String é utilizada para guardar textos.
  String nome = "Raphael";


  // =========================================================
  // 3. OPERADORES MATEMÁTICOS
  // =========================================================

  // Soma
  double soma = salario + vendas;

  // Subtração
  double subtracao = salario - vendas;

  // Multiplicação
  double multiplicacao = salario * vendas;

  // Divisão.
  // O operador / retorna um valor double.
  double divisao = salario / 2;


  // =========================================================
  // 4. ~/ E %
  // =========================================================

  // ~/ faz uma divisão inteira.
  //
  // Exemplo:
  // 576 ~/ 100 = 5
  //
  // O resultado é apenas a parte inteira.
  int divisaoInteira = idade ~/ 2;


  // % pega o RESTO da divisão.
  //
  // Exemplo:
  // 10 % 3 = 1
  //
  // Isso também pode ser usado para descobrir
  // se um número é par.
  int resto = idade % 2;


  // =========================================================
  // 5. FUNÇÃO
  // =========================================================

  // Chamamos a função calcularSalario().
  //
  // Os valores salario e vendas são enviados para a função.
  double salarioFinal = calcularSalario(salario, vendas);


  // =========================================================
  // 6. IF / ELSE
  // =========================================================

  // == significa "igual".
  // % 2 == 0 verifica se o número é par.
  if (idade % 2 == 0) {

    print("A idade é par.");

  } else {

    print("A idade é ímpar.");
  }


  // =========================================================
  // 7. OPERADORES DE COMPARAÇÃO
  // =========================================================

  // >  maior que
  // <  menor que
  // >= maior ou igual
  // <= menor ou igual
  // == igual
  // != diferente

  if (idade >= 18) {

    print("A pessoa é maior de idade.");

  } else {

    print("A pessoa é menor de idade.");
  }


  // =========================================================
  // 8. && = E
  // =========================================================

  // As DUAS condições precisam ser verdadeiras.
  if (idade >= 18 && salario > 0) {

    print("A idade é maior ou igual a 18 E o salário é positivo.");
  }


  // =========================================================
  // 9. || = OU
  // =========================================================

  // Pelo menos UMA das condições precisa ser verdadeira.
  if (idade < 18 || salario <= 0) {

    print("A pessoa é menor de idade OU o salário não é positivo.");
  }


  // =========================================================
  // 10. INTERVALOS
  // =========================================================

  if (salario >= 0 && salario <= 25) {

    print("Salário no intervalo [0,25]");

  } else if (salario > 25 && salario <= 50) {

    print("Salário no intervalo (25,50]");

  } else if (salario > 50 && salario <= 75) {

    print("Salário no intervalo (50,75]");

  } else if (salario > 75 && salario <= 100) {

    print("Salário no intervalo (75,100]");

  } else {

    print("Salário fora dos intervalos.");
  }


  // =========================================================
  // 11. POW()
  // =========================================================

  // pow() calcula uma potência.
  //
  // pow(5, 2)
  //
  // significa:
  // 5² = 25
  double potencia = pow(5, 2).toDouble();


  // =========================================================
  // 12. SQRT()
  // =========================================================

  // sqrt() calcula uma raiz quadrada.
  //
  // sqrt(25) = 5
  double raiz = sqrt(25);


  // =========================================================
  // 13. EXEMPLO DE BHASKARA
  // =========================================================

  // Coeficientes da equação:
  // Ax² + Bx + C = 0
  double A = 10;
  double B = 20.1;
  double C = 5.1;


  // Calculamos o delta:
  // Δ = B² - 4AC
  double delta = pow(B, 2).toDouble() - (4 * A * C);


  // Para Bhaskara funcionar:
  // A não pode ser 0
  // e o delta não pode ser negativo.
  if (A == 0 || delta < 0) {

    print("Impossivel calcular");

  } else {

    // Calcula a primeira raiz.
    double R1 = (-B + sqrt(delta)) / (2 * A);

    // Calcula a segunda raiz.
    double R2 = (-B - sqrt(delta)) / (2 * A);

    // toStringAsFixed(5) deixa exatamente 5 casas decimais.
    print("R1 = ${R1.toStringAsFixed(5)}");
    print("R2 = ${R2.toStringAsFixed(5)}");
  }


  // =========================================================
  // 14. DISTÂNCIA ENTRE DOIS PONTOS
  // =========================================================

  double x1 = 1.0;
  double y1 = 7.0;

  double x2 = 5.0;
  double y2 = 9.0;


  // Fórmula da distância:
  //
  // √((x2-x1)² + (y2-y1)²)
  double distancia = sqrt(
    pow(x2 - x1, 2).toDouble() +
    pow(y2 - y1, 2).toDouble()
  );


  // Mostra a distância com 4 casas decimais.
  print("Distância = ${distancia.toStringAsFixed(4)}");


  // =========================================================
  // 15. DINHEIRO EM CENTAVOS
  // =========================================================

  double dinheiro = 576.73;

  // Transformamos reais em centavos.
  //
  // 576.73 × 100 = 57673
  //
  // round() arredonda o resultado para evitar
  // problemas de precisão do double.
  int centavos = (dinheiro * 100).round();


  // Quantidade de notas de R$100.
  int notas100 = centavos ~/ 10000;

  // Pega o que sobrou depois das notas de R$100.
  centavos = centavos % 10000;


  // Quantidade de notas de R$50.
  int notas50 = centavos ~/ 5000;

  // Pega o restante.
  centavos = centavos % 5000;


  // Quantidade de notas de R$20.
  int notas20 = centavos ~/ 2000;

  centavos = centavos % 2000;


  // =========================================================
  // 16. INTERPOLAÇÃO DE STRING
  // =========================================================

  // Podemos colocar uma variável dentro de uma String
  // utilizando $.
  print("Nome: $nome");

  // Também podemos utilizar ${}.
  // Isso é especialmente útil quando fazemos cálculos
  // ou usamos métodos.
  print("Salário final: ${salarioFinal.toStringAsFixed(2)}");


  // =========================================================
  // 17. RESULTADOS DOS OPERADORES
  // =========================================================

  print("Soma: $soma");
  print("Subtração: $subtracao");
  print("Multiplicação: $multiplicacao");
  print("Divisão: $divisao");

  print("Divisão inteira: $divisaoInteira");
  print("Resto: $resto");

  print("Potência: $potencia");
  print("Raiz quadrada: $raiz");

  print("Notas de R\$ 100: $notas100");
  print("Notas de R\$ 50: $notas50");
  print("Notas de R\$ 20: $notas20");


  // =========================================================
  // 18. stdout.write()
  // =========================================================

  // Diferente do print(), o write() não pula uma linha.
  stdout.write("Fim do programa.");
}