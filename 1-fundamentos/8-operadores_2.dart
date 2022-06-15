main() {

	// Operadores Atribuição
  double a = 2; // atribuição é o =
  print(a);

  a = a + 3;
  print(a);

  a += 3; // é a mesma coisa que a = a + 3;
  print(a);

  a -= 3;
  print(a);

  a *= 3;
  print(a);

  a /= 5;
  print(a);
	
  a %= 2; // qual o resto da divisão de a, no caso está valento 3, por 2, vai dar 1
  print(a);


  // Operadores Relacionais -> O resultado sempre é bool
  print(3 > 2);
  print(3 >= 3);
  print(3 < 4);
  print(3 <= 3);
  print(3 != 3);
  print(3 == 3); // A atribuição é =, a igualdade é ==
  print(3 == '3'); // Dará falso, diferente tipagem, em outras linguagens dá verdadeiro

  // Podemos unir diferentes operadores:
  print(2 + 5 > 3 - 1 && 4 + 7 != 2 * 3); // aq temos operações aritméticas, relacionais, lógicas
  
  // print(43124325465156753 & 4678561236); - OPERAÇÃO BIT A BIT
}