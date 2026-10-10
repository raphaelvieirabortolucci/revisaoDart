class Livro {
  String titulo;
  String autor;

  // Construtor
  Livro(this.titulo, this.autor);

  void exibirDados() {
    print("Título: $titulo");
    print("Autor: $autor");
  }
}