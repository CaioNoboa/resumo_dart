/*
	- List
	- Map
	- Set
*/

main() {

	// Lista - [] colchetes são o símbolo das listas (array em outras linguagens)
	
	List aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael'];

	// Poderiamos usar var, daí o programa iria inferir que é lista:
	var reprovados = ['Rodrigo', 'Guilherme', 'Cláudio'];
	print(reprovados is List); // a resposta é true, então, sim, é uma lista

	print(aprovados);

	/* Assim como na array, a lista é indexada, há um índice, isto é:
	Ana é o índice 0;
	Carlos é o índice 1;
	Daniel é o índice 2;
	Rafael é o índice 3;
	
	Podemos acessar o valor de cada posição de diferentes formas, veja:	*/
	print(aprovados.elementAt(2));
	print(aprovados[0]);
	
	// Se pedirmos o índice 4 dará erro, pois apesar de conter 4 elementos, começa-se do 0: 
	print(aprovados.length);

	aprovados.add('Daniel');
	print(aprovados.length);


	// Map - {} chaves não serve apenas para definir bloco de códigos, mas também para o Map

	Map telefones = { // veja, não temos um bloco de códigos aqui e sim um map
		'João': '+55 (21) 97845-1236',
		'Maria': '+55 (11) 97845-1236',
		'Pedro': '+55 (47) 97845-1236',
	};
		// Observação: na aula o professor usa var telefones, pois seria necessário identificar os tipos ao usar Map: Map<String, String> telefones, mas aqui não foi pedido, talvez seja uma atualização

	// Caso haja uma repetição de chave, o último valor é o que contará, apareceria duas vezes a chave e valor, mas em ambos o valor da última chave
	
	// Manejando o Map:
		// No Map temos a estrutura chave: valor, dessa forma, não acessaremos pelo índice e sim pela chave

	print(telefones); // mostra chaves e valores

	print(telefones['Maria']); // mostra apenas o valor

	print(telefones.length); // dá 3

	print(telefones.values); // mostra apelas os valores

	print(telefones.keys); // mostra apenas as chaves

	print(telefones.entries); // mostra chaves e valores


	// Set
	var times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo'};
	// O set não é indexado, não conseguimos acessar um time pelo índice
	// Há várias funcionalidades possíveis
	times.add('Palmeiras'); // mesmo que tentemos adicionar palmeiras mais vezes, set não aceita repetição, então aparecerá palmeiras apenas uma vez
	print(times.length);
	print(times.contains('Vasco'));
	print(times.first);
	print(times.last);
		
	// Principal diferença entre set e list, além de que set não tem índice, é de que set não aceita repetição, a lista aceita	
}