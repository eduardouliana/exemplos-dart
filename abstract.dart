/*utilizando "abstract" na frente de "class" faz com que não pode ser criado instâncias dessa classe, apenas as classe que herdam dela
com isso também pode definir método sem implementação na classe abstrata, torna-se obrigado implementar este método nas classes que herdam dela.
*/
abstract class Animal {
  String nome;
  double peso;
  
  //construtor da classe
  Animal(this.nome, this.peso);
  
  void comer() {
    print("$nome comeu");
  }
  
  /* 
   * método sem implementação
   * Com isso será obrigatório implementar este método nas classes que herdam dessa classe
   * */
  void fazerSom();
}

//herda da classe Animal
class Cachorro extends Animal{
  int fofura;
  
  //construtor da classe
  //:super invoca o construtor da classe principal(Animal)
  Cachorro(String nome, double peso, this.fofura) : super(nome, peso);
  
  //pode reimplementar o método da classe principal, podendo mudar o comportamento conforme precisar
  @override
  void fazerSom() {
    print("$nome fez au au");
  }
  
  //sobrescrevendo o método padrão quando imprime o valor
  //ao fazer print(ObjetoDaClasse) irá chamar este método
  @override
  String toString() {
    return "Cachorro = Nome: $nome, Peso: $peso, Fofura: $fofura";
  }
  
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
  
  //pode reimplementar o método da classe principal, podendo mudar o comportamento conforme precisar
  @override
  void fazerSom() {
    print("$nome fez miaaaau");
  }
  
  //sobrescrevendo o método padrão quando imprime o valor
  //ao fazer print(ObjetoDaClasse) irá chamar este método
  @override
  String toString() {
    return "Gato = Nome: $nome, Peso: $peso";
  }
  
  bool estaAmigavel() {
   return true; 
  }
  
}

void main() {
  
  Cachorro cachorro = Cachorro("Dog", 10.0, 100);
  cachorro.fazerSom();
  cachorro.comer();
  cachorro.brincar();
  //automaticamente será chamado o toString da classe
  print(cachorro);
  
  Gato gato = Gato("Cat", 10.0);
  gato.fazerSom();
  gato.comer();
  print("Está amigável? ${gato.estaAmigavel()}");
  //automaticamente será chamado o toString da classe
  print(gato);
  
  

}
