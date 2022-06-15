import 'dart:math';

main() {
  var nota = Random().nextInt(11); // o número inserido não entra, então vai até 10
  print('A nota sorteada foi $nota');

  // Ao contrário do if, que lida com true ou false, o switch vai lidar com valores. É preciso discriminar os valores:

  switch(nota) {    
    case 10:
      print('Quadro de honra!');
      print('Parabéns!');
      break; // em todo case preciso colocar um break para que finalize o switch, senão rodará todos os cases
    
    case 9: case 8: // não consigo inserir intervalos, apenas os números inteiros, caso queira intervalo, melhor usar if
      print('Ótima nota, parabéns!');
      break;
    
    case 7: case 6:
      print('Aprovado, parabéns!');  
      break;
    
    case 5:
      print('SAC');
      break;

    default: // serve para caso não entre em nenhum case
      print('Reprovado!');
  }

  print('Fim!');
}