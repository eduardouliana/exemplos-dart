void main() {
  //para passar um parâmetro opcional deve ser informado o nome e o valor (nomeParametro: ValorParametro)
	criarBotao("Botão Sair", botaoCriado,cor: "Preto", largura: 10.0);
  
  //passagem de função anonima por parâmetro
  criarBotao("Botão Sair", (){
    print("Função anonima");
  });
}

// função para ser passada de parâmetro
void botaoCriado() {
  print("Botão criado");
}

// Deixar entre chaves os parâmetros opcionais
// funções de parâmetro
void criarBotao(String texto, Function criadoFunc, {String cor, double largura}) {
  print(texto);
  //caso não informar o parâmetro "cor", assume por default este valor
  print(cor ?? "Preto");
  
  //caso não informar o parâmetro "largura", assume por default este valor
  print(largura ?? 10.0);
  
  //executando a função que veio de parâmetro
  criadoFunc();
}