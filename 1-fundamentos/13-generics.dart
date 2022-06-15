// Generics é <Tipagem>, é amarrar a tipagem das variáveis

main() {
  // Como dart é uma linguagem fortemente tipada, podemos declarar o tipo dos itens de uma list, por exemplo, para que nada diferente desse tipo seja adicionado:
  List<String> frutas = ['banana', 'maça', 'laranja'];
  // frutas.add(1); // não podemos fazer isso, o programa nem começará a rodar
  frutas.add('melão');
  print(frutas);

  Map<String, double> salarios = {
    'gerente': 15000.00,
    'vendedor': 7000.00,
    'estagiário': 400.00,
  };
  print(salarios);
}