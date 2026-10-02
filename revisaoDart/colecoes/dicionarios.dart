void main() {
  Map<String, int> ages = {
    "John": 25,
    "Jane": 30,
    "Bob": 20,
  };

  print(ages); 
  for (var name in ages.keys) {
    int age = ages[name]!; // Acessa o valor usando a chave
    print("$name tem $age anos");
  }
}

