class Pessoa {
  String nome;
  //Só pode ser acessado de dentro da classe ("private")
  //Precisa criar getter e setter se quiser acessar e alterar
  int _idade;
  double _altura;
  
  //construtor da classe
  /*Pessoa(String nome, int idade, double altura){
    this.nome = nome;
    this.idade = idade;
    this.altura = altura;
  }*/
  
  //construtor modo resumido
  //faz a mesma coisa que o anterior
  Pessoa(this.nome, this._idade, this._altura);
  
  //named constructor
  Pessoa.nascer(this.nome, this._altura){
    this._idade = 0;
    print("${this.nome} nasceu");    
  }
  
  //define um get para ler o valor de _idade
  int get idade => _idade;
  /*
   * faz a mesma coisa que o método anterior
  int get idade {
    return this._idade;
  }
  */
  
  //defino um get para o atributo
  double get altura => _altura;
  /*
   * faz a mesma coisa que o método anterior
  double get altura {
    return this._altura;
  }*/
  
  
  //define um set para o atributo
  //somente deixa setar o valor se for menor que 3 metros
  set altura(double altura){
    if(altura > 0.0 && altura < 3.0) {
      this._altura = altura;
    }
  }
  
  //função para dormir
  void dormir() {
    print("${this.nome} está dormindo.");
  }
  
  //função para incrementar a idade, já que fez aniversário
  void aniver() {
    this._idade++;
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
  
  //utiliza o named constructor
  Pessoa nene = Pessoa.nascer("Nenezinho", 0.30);
  print(nene.nome);
  print(nene.idade);
}
