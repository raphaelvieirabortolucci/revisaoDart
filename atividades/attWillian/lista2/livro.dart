//Crie uma classe Livro com os atributos título, autor e anoPublicacao.
//Crie um construtor para preencher esses atributos ao criar um livro.
//Crie um método exibirInformacoes() que mostre os dados do livro.
//No main, crie pelo menos dois objetos da classe Livro e chame o método de cada um.
//Faça um relatório do que é uma classe, um construtor e um método em POO.
//Envie o arquivo com a classe em formato docx ou pdf. Inclua no arquivo seu nome e turma.


class Livro {
    String titulo;
    String autor;
    int ano;

    Livro(this.titulo, this.autor, this.ano);

    void exibirInformacoes () {
        print("Titulo: $titulo");
        print("Autor: $autor");
        print("Ano: $ano");
    }

}

void main () {
    var livroUm = Livro("O iluminado", "Stephen King", 1977);
    var livroDois = Livro("Doutor sono", "Stephen King", 2013);

    livroUm.exibirInformacoes();
    livroDois.exibirInformacoes();

}
