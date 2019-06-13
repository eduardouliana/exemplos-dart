class InfoPessoa {
  int idade;
  
  InfoPessoa(this.idade);
}

void main() {
  //Criando um mapa (chave, valor) tipo dicionários
  //irá armazenar o ddd e o nome da cidade
  Map<int,String> ddds = Map();
  ddds[11] = "São Paulo";
  ddds[49] = "Santa Catarina";
  ddds[46] = "Paraná";
  
  //mostra todos os dados de ddds
  print(ddds);  
  //mostra todas as chaves cadastradas
  print(ddds.keys);
  //mostra todos os valores cadastrados
  print(ddds.values);
  
  //remove um item pela chave
  ddds.remove(11);
  
  //criando um mapa de pessoas
  //o segundo parâmetro pode ser qualquer coisa (dynamic)
  Map<String, dynamic> pessoa = Map();
  pessoa["nome"] = "Eduardo";
  pessoa["idade"] = 10;
  pessoa["altura"] = 1.5;
  
  //criando um mapa de pessoas que armazenam informações de pessoa
  Map<String, InfoPessoa> pessoas = Map();
  pessoas["Eduardo"] = InfoPessoa(24);
  pessoas["Amanda"] = InfoPessoa(20);
}
