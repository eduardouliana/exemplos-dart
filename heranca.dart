class Animal {
  String nome;
  double peso;
  
  //construtor da classe
  Animal(this.nome, this.peso);
  
  void comer() {
    print("$nome comeu");
  }
  
  void fazerSom() {
    print("$nome fez algum som");
  }
}

//herda da classe Animal
class Cachorro extends Animal{
  int fofura;
  
  //construtor da classe
  //:super invoca o construtor da classe principal(Animal)
  Cachorro(String nome, double peso, this.fofura) : super(nome, peso);
  
  void brincar() {
    fofura +=10;
    print("Fofura do $nome aumento para $fofura");
  }
}

//herda da classe animal
class Gato extends Animal{
  
  //cria o construtor da classe
  //:super invoca o construtor da classe principal(Animal)
  Gato(String nome, double peso) : super(nome, peso);
  
  bool estaAmigavel() {
   return true; 
  }
  
}

void main() {
  
  Cachorro cachorro = Cachorro("Dog", 10.0, 100);
  cachorro.fazerSom();
  cachorro.comer();
  cachorro.brincar();
  
  Gato gato = Gato("Cat", 10.0);
  gato.fazerSom();
  gato.comer();
  print("Está amigável? ${gato.estaAmigavel()}");
}
