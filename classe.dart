class Pessoa {
  String nome;
  int idade;
  double altura;
  
  void dormir() {
    print("$nome está dormindo.");
  }
  
  void aniver() {
    idade++;
  }
}
  
void main() {
  // "new" é opcional
  Pessoa pessoa1 = new Pessoa();  
  pessoa1.nome = "Eduardo";
  pessoa1.idade = 24;
  pessoa1.altura = 1.83;
  
  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = "Amanda";
  pessoa2.idade = 20;
  pessoa2.altura = 1.70;
  
  print(pessoa1.nome);
  print(pessoa2.nome);
  
  print(pessoa1.idade);
  pessoa1.aniver();
  print(pessoa1.idade);
  
  pessoa2.dormir();  
}
