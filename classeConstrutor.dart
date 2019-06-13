class Pessoa {
  String nome;
  int idade;
  double altura;
  
  //construtor da classe
  /*Pessoa(String nome, int idade, double altura){
    this.nome = nome;
    this.idade = idade;
    this.altura = altura;
  }*/
  
  //construtor modo resumido
  //faz a mesma coisa que o anterior
  Pessoa(this.nome, this.idade, this.altura);
  
  //named constructor
  Pessoa.nascer(this.nome, this.altura){
    this.idade = 0;
    print("${this.nome} nasceu");
    
  }
  
  void dormir() {
    print("${this.nome} está dormindo.");
  }
  
  void aniver() {
    this.idade++;
  }
}
  
void main() {
  // "new" é opcional
  Pessoa pessoa1 = new Pessoa("Eduardo", 24, 1.83);  
  
  Pessoa pessoa2 = Pessoa("Amanda", 20, 1.70);
  
  print(pessoa1.nome);
  print(pessoa2.nome);
  
  print(pessoa1.idade);
  pessoa1.aniver();
  print(pessoa1.idade);
  
  pessoa2.dormir();  
  
  Pessoa nene = Pessoa.nascer("Nenezinho", 0.30);
  print(nene.nome);
  print(nene.idade);
}
