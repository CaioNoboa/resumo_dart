/*
  Ler os números divisíveis por 5 contidos em um intervalo de 0 a 1000  
*/

main() {
  for(var a = 0; a <= 1000; a++) {
    if(a % 5 != 0) {
      continue;
    }
    print(a);
  } 
}