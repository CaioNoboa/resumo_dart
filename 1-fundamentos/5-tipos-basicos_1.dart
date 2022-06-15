/*
  - Números (int e double)
  - String (String)
  - Booleano (bool)
  - dynamic (dynamic)
*/

main() {
	
	// Números
	
	int n1 = 3;
	
	// Podemos trabalhar com os valores dessas variáveis
	// Imagine um número negativo, mas que queremos usar o valor absoluto:
	double n2 = -5.78;
	// Podemos fazer de duas formas:
	// double n2 = (-5.78).abs();
	// double n2 = -5.78; n2.abs();

	var s1 = n1 + n2.abs(); // o tipo de s1 será o double, pq da soma de um int com um double, double é o q consegue reter mais informação
	print(s1);

	// Podemos fazer contas com valores cujo tipo é String, para isso precisaremos converter:
	String t1 = '15.75';
	double n3 = double.parse(t1);
	print(n3.abs() * 2);

	num n4 = 7; // num é o pai de int e double
	print(n4 + 4);
	n4 = 10;
	print(n4 + 4);


	// Textos

	String t2 = "Bom";
	String t3 = " dia!";
	print(t2 + t3); // Concatenação
	//Podemos adicionar funcionalidades:
	print(t2.toUpperCase() + t3.toUpperCase());


	// Booleano
		// Em Dart valores booleanos apenas podem receber true ou false, em outras linguagens é permitido atribuir 0 e 1
	bool estaChovendo = true;
	bool muitoFrio = false;
	print(estaChovendo || muitoFrio); // || = ou
	print(estaChovendo && muitoFrio); // && = e


	// Dynamic
		// o tipo dynamic permite atribuir diferentes tipagens à uma variável:
	dynamic X = "Batata";
	print(X);
	print(X.runtimeType);

	X = 15.4;
	print(X);
	print(X.runtimeType);

	X = true;
	print(X);
	print(X.runtimeType);

	// Quando usamos var, o programa irá inferir qual o tipo através dos valores atribuídos à variável, mas daí não é possível atribuir valores de outra tipagem
}