import "dart:io";

void main() {
  stdout.write("Fala tua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  if (idade >= 18) {
    print("tu é maior rapa");
  } else {
    print("tu é criança");
  }
}
