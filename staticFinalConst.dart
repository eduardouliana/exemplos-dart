class Valores {
  
  //passa a ser uma variável da classe
  //não precisa instanciar essa classe para usar
  static int vezesClicado;
}

void main() {
  //consegue usar direto assim porque é "static"
  Valores.vezesClicado = 2;
  
  //não pode mais alterar o valor
  const numero = 10;
  print(numero);
  
  //torna esta variável imutável
  //não pode criar outro tipo para essa variável
  final Valores val = Valores();
}
