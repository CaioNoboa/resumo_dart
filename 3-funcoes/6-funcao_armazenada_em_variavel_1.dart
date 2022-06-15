main() {
  int a = 2; // tipo nome_variavel = valor
  print(a);

  // Para armazenarmos uma função em uma variável:
  int Function(int, int) soma1 = somaFuncao;
// tipo tipo_Function (tipo_parametros) nome_variavel = nome_funcao
  print(soma1(2 , 3));

  // Podemos também atribuir à variável criada uma função anônima, isto é, sem nome (só faz sentido criar uma função sem nome se ela for ser armazenada em uma variável ou chamá-la logo na sequência). Veja como fica mais direto dessa forma, mais simplificado:
  int Function(int, int) soma2 = (x, y) { // poderíamos discriminar os tipos de x e y, mas o programa já entendeu que são int
    return x + y;
  };
  print(soma2(5, 5));

  // Poderíamos também fazer de uma forma mais direta:
  var soma3 = (int x, int y) {
    return x + y;
  };
  print(soma3(15, 10));

  var soma4 = ([int x = 1, int y = 1]) { // aqui os parâmetros são opcionais
    return x + y;
  };
  print(soma4(15, 10));
  print(soma4());
}

int somaFuncao(int a, int b) {
  return a + b;
}