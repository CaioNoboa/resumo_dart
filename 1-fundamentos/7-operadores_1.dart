main() {

	// Operadores Aritméticos
	int a = 10;
	int b = 5;
	int resultadoSoma = a + b;
	print(resultadoSoma);
	print(a - b);
	print(a * b);
	print(a / b);
	print(a % b); // resto da divisão
	print(a % 3);


	// Operadores Lógicos
	bool produtoFragil = true;
	bool produtoCaro = true;

	print(produtoCaro && produtoFragil); // E
	print(produtoCaro || produtoFragil); // OU
	print(produtoCaro ^ produtoFragil); // OU EXCLUSIVO (XOR) - isto é, só um dos dois pode ser verdadeiro, com || se ambos forem true, será true; com ^ se ambos forem true, será false
	print(!produtoFragil); // Negação lógica (NOT), faz falso ficar verdadeiro e vice-versa
	print(!!produtoFragil); // Negação dupla, não não, volta ao valor original

  print("Mais sobre negação lógica:");
  
  print(!true);
  print(!false);
  
  bool x = false;
  print(!x);
}