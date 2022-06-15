// Com ponto '.' podemos adicionar várias funcionalidades

main() {
  double nota = 6.99.roundToDouble();
  print(nota);

  double nota2 = 6.958775515645154557;
  print(nota2.roundToDouble());

  print('Bom dia!'.toUpperCase());

  String s1 = 'caio salvador noboa';
  
  // Pegando uma substring, ou seja, uma parte da string, que no caso vai do caracter 0 até o 
  String s2 = s1.substring(0, 13);
  print(s2);
  
  String s3 = s2.toUpperCase();
  print(s3);

  // Imagina que tenho uma palavra com 5 caracteres e quero que o programa complete isso com determinado caracter até somar 15:
  String s4 = s1.substring(0, 4).padRight(15, "!");
  print(s4);
  // ou
  String s5 = s3.padRight(30, '!');
  print(s5);

  var s6 = "caio salvador noboa"
    .substring(0, 4)
    .toUpperCase()
    .padRight(15, '!') // até aq era string
    .length // agora é int
    .abs(); // abs só pode ser adicionado se estiver trabalhando com int
  print(s6);
}