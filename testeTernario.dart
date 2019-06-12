void main() {
  bool aprovado = true;
  String info;
  
  if (aprovado){
    info = "Aprovado";
  } else {
    info = "Reprovado";
  }
  
  //                valor true   valor false
  info = aprovado ? "Aprovado" : "Reprovado";

  //Caso o conteúdo de "nome" for nulo, atribui o valor default
  String nome = "Eduardo";
  String info2 = nome ?? "Não informado";
}