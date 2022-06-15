main() {  
  String nome = 'João';
  String status = 'aprovado';
  double nota = 9.2;

  // Concatenação:
  String frase1 = nome + ' está ' + status + ', pois tirou nota ' + nota.toString() + '!';
  print(frase1);

  // Com interpolação:
  String frase2 = "$nome está $status, pois tirou nota $nota! A nota custou R\$50,00"; // não precisamos usar .toString(), o programa por si só já entende. Pode ser feito com '' ou com ""
  // Caso queira realmente usar o $ para aparecer no texto, usar \$
  print(frase2);

  // Podemos fazer várias coisas dentro de uma interpolação:
  print("1 + 1 = ${1 + 1}");
}