/*
Um nome, RA;
Um conjunto de linguagens que conhece, sem repetições;
Um mapa com as notas por disciplinas.
 
O programa de permitir cadastrar pelo menos 3 alunos, exibir seus dados e
calcular as médias das notas de cada um, dado que cada disciplina há 4 atividade, duas com peso 4 e 2 últimas com peso 6.
 */


import 'Aluno.dart';
import 'dart:io';

// Calcula a media das
double calcularMedia(List<double> notas) {
  List<int> pesos = [4, 4, 6, 6];
  double soma = 0;
  int somaPesos = 0;

  for (int i = 0; i < notas.length; i++) {
    soma += notas[i] * pesos[i];
    somaPesos += pesos[i];
  }

  return soma / somaPesos;
}

void main() {
  List<Aluno> alunos = [];

  while (true) {
    stdout.write("Cadastrar um novo aluno? [y/n]: ");
    String resposta = stdin.readLineSync()!;

    if (resposta.toLowerCase() == "y") {
      stdout.write("Digite o nome do aluno: ");
      String nomeAluno = stdin.readLineSync()!;

      stdout.write("Digite o Registro do aluno: ");
      String raAluno = stdin.readLineSync()!;

      // Linguagens que o aluno conhece (também são as disciplinas)
      Set<String> linguagens = {};
      while (true) {
        stdout.write("Digite a linguagem que o aluno sabe: ");
        linguagens.add(stdin.readLineSync()!);

        stdout.write("Digite y para adicionar outra linguagem, ou qualquer coisa para parar: ");
        String resposta2 = stdin.readLineSync()!;
        if (resposta2.toLowerCase() != "y") {
          break;
        }
      }

      // Para cada linguagem, pede as 4 notas e calcula a média
      Map<String, double> notasMedia = {};
      for (String linguagem in linguagens) {
        List<double> notas = [];
        for (int j = 0; j < 4; j++) {
          stdout.write("Digite a nota ${j + 1} de $linguagem: ");
          notas.add(double.parse(stdin.readLineSync()!));
        }

        notasMedia[linguagem] = calcularMedia(notas);
      }

      alunos.add(Aluno(nomeAluno, raAluno, linguagens, notasMedia));
      print("");
    } else if (resposta.toLowerCase() == "n") {
      if (alunos.length < 3) {
        print("Cadastre pelo menos 3 alunos. Faltam ${3 - alunos.length}.");
        continue;
      }
      print("Finalizando programa!");
      break;
    } else {
      print("Digite y ou n.");
    }
  }

  // Exibição
  for (Aluno aluno in alunos) {
    print("\nNome: ${aluno.nome}");
    print("RA: ${aluno.ra}");
    print("Linguagens: ${aluno.linguagens.join(', ')}");
    aluno.notas.forEach((linguagem, media) {
      print("  $linguagem: média ${media.toStringAsFixed(2)}");
    });
  }
}