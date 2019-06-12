void main() {
  //implementando um teste com dart
  
  String nome = "Eduardo Uliana";
  int idade = 24;
  double altura = 1.83;
  bool vivo = true;
  var tipoDefinido = "Primeiro valor que receber, seta o tipo da variável";
  dynamic tipoIndefinido = "Pode atribuir qualquer coisa para esta variável";
  
  print("Seu nome é: $nome");
  print("Sua altura é: $altura");
  print("Sua idade é: $idade");
  print("Estou vivo?: $vivo");
  
  //operações matemáticas
  double num1 = 10.0;
  double num2 = 20.0;
  
  double resultado = num1 + num2;
  
  print("$num1 + $num2 = $resultado");
  
  num1 += 10; //num1 = num1 + 15;
  
  //operadores lógicos
  bool testeComp = (false == true);
  bool testeOr = (false || false);
  bool testeAnd = (false && true);
  bool testeNot = (!false);  
}
