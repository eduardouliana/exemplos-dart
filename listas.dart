class Pessoa {
  String nome;
  int idade;
  
  //construtor...
  Pessoa(this.nome, this.idade);
}

void main() {
  //criando lista do tipo string
  List<String> nomes = ["Eduardo", "Amanda", "Neila", "José"];
  
  //criando uma lista de Pessoas vazia
  List<Pessoa> pessoas = List();
  
  //mostrando o primeiro item da lista
  print(nomes[0]);
  
  //adicionando itens na lista
  nomes.add("Maik");
  
  //imprime todos os itens da lista
  print(nomes);
  
  //mostrando a quantidade de itens que tem na lista
  print(nomes.length);
  
  //remove o item da posição 2
  nomes.removeAt(2);
  
  //adiciona um item na posição 2
  nomes.insert(1, "Maisa");
  
  //verifica se exite o item "Eduardo" na lista
  print(nomes.contains("Eduardo"));
  
  //Adicionando pessoas na lista
  pessoas.add(Pessoa("Pessoa1", 10));
  pessoas.add(Pessoa("Pessoa2", 20));
  
  //percorre todoas as pessoas e mostra o nome
  //forEach
  for (Pessoa p in pessoas) {
    print(p.nome);
  }
}
