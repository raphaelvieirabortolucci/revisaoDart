class Item {
  String nome;
  int _preco;

  Item(this.nome, this._preco);

  int get preco => _preco;

  set preco(int valor) {
    if (valor > 0) {
      _preco = valor;
    }
  }

  void exibirInfo() {
    print("Item: $nome");
  }

  void vender() {
    print("$nome foi vendido.");
  }
}