// definir fora para ser uma "variável global"
double somaGlobal;

void main() {
	soma(10.0, 20.0);
  
  print(somaGlobal);
}

void soma(double a, double b) {
  somaGlobal = a + b;
}