void main() {
	printMeuNome();
  
  calcSoma(10.0, 20.0);
  
  double mult = calcMult(10.0, 5.0);
  print(mult);
  
  print(calcAreaCirculo(5.0));
}

void printMeuNome() {
  print("Eduardo");
}

void calcSoma(double num1, double num2) {
  print(num1 + num2);
}

double calcMult(double num1, double num2) {
  return num1 * num2;
}

// mesma ideia que arrow function
double calcAreaCirculo(double raio) => 3.14 * raio * raio;