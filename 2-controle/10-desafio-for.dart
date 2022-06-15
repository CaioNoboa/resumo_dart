/*
Desafio, imprimir o seguinte:

#
##
###
####
#####
######
*/

main() {
  for(var i = '#'; i != '###########'; i += '#') {
    print(i);
  }

// Agora usando números:

  var valor = '#';
  for(int i = 0; i < 10; i++) {
    print(valor);
    valor += '#';
  }
}