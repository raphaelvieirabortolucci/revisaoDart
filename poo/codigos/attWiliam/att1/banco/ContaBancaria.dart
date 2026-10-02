import 'dart:io';

class ContaBancaria {
  double _saldo;

  ContaBancaria({this._saldo = 100.00});

  // GET: permite consultar o saldo
  double get saldo {
    return _saldo;
  }

  // Método para depositar
  void depositar(double valor) {
    _saldo = _saldo + valor;
  }

  // Método para sacar
  void sacar(double valor) {
    if (valor <= _saldo) {
      _saldo = _saldo - valor;
    } else {
      print("Saldo insuficiente!");
    }
  }
}

void main() {
  var conta = ContaBancaria();

  int resposta = 1;

  while (resposta != 0) {
    print("\nSaldo atual: R\$ ${conta.saldo}");
    print("Você quer:");
    print("1. Depositar");
    print("2. Sacar");
    print("0. Sair");

    resposta = int.parse(stdin.readLineSync()!);

    if (resposta == 1) {
      stdout.write("Digite o valor a depositar: ");
      double valor = double.parse(stdin.readLineSync()!);

      conta.depositar(valor);

      print("Depósito realizado!");
    } else if (resposta == 2) {
      stdout.write("Digite o valor a sacar: ");
      double valor = double.parse(stdin.readLineSync()!);

      conta.sacar(valor);
    } else if (resposta == 0) {
      print("Saindo...");
    } else {
      print("Resposta inválida!");
    }
  }
}