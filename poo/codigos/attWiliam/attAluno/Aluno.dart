/*
Um nome, RA;
Um conjunto de linguagens que conhece, sem repetições;
Um mapa com as notas por disciplinas.
 
O programa de permitir cadastrar pelo menos 3 alunos, exibir seus dados e
calcular as médias das notas de cada um, dado que cada disciplina há 4 atividade, duas com peso 4 e 2 últimas com peso 6.
*/
 

class Aluno {
  String nome;
  String ra;

  Set<String> linguagens;
  Map<String, double> notas; // disciplina -> média

  Aluno(this.nome, this.ra, this.linguagens, this.notas);
}