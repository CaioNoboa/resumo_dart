main() {

  int a = 2;
  
  // Todas as 3 linhas de código abaixo representam a mesma coisa:
  a = a + 1;
  a += 1;
  a++; // também podemos representar como ++a. A representação --a gera uma maior prioridade na resolução

  print(a);

  // Todas as 3 linhas de código abaixo representam a mesma coisa:
  a = a - 1;
  a -= 1;
  a--; // também podemos representar como --a. A representação --a gera uma maior prioridade na resolução

  print(a);

  // Sobre as diferenças entre a++ e ++a:
  int b = 2;
  int c = 3;

  print(b++ == --c);
  /*
  Seria esperado que esse resultado fosse falso, afinal 2+1=3 != 2=3-1, porém o uso do -- antes da variável, --c, gera uma maior urgência na resolução e o uso do b++ uma menor urgência. O resultado da true, pq o programa realiza o --c, depois o == e depois o b++
  
  Dessa forma, precisamos simplificar o código e deixar bem claro. O código deve ser de fácil leitura. Esse tipo de representação print(b++ == --c); torna difícil nossa compreensão, não deve ser utilizado.
  */
}