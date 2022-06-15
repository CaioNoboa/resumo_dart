/*
Atributos e métodos de classes iniciados com _ apenas são 'visíveis' dentro do próprio documento, isto é:

class Carro {  
  late final int velocidadeMaxima;
  late int _velocidadeAtual = 0;

  Carro([this.velocidadeMaxima = 200]);
}
O atributo velocidadeMaxima é final, isto significa que eu posso ter carros de diferentes velocidadeMaximas, mas assim que eu atribuir valor para um carro1, não poderei reatribuir o valor

Quanto à velocidadeAtual, se deixar sem _ podemos atribuir e reatribuir valores, mas colcando _velocidadeAtual, não teremos acesso à esse atributo em outros documentos, não seria possível fazer carro1._velocidadeAtual

Para impedirmos a questão de reatribuir valor, mas deixando o atributo acessível, podemos usar getters e setters
*/

class Carro {
  late final int velocidadeMaxima;
  int _velocidadeAtual = 0;

  Carro([this.velocidadeMaxima = 200]);

  /*
  Como colocamos _ em velocidadeAtual, não conseguimos mais acessar esse atributo fora deste documento. Assim, usaremos get e set

  Get e Set são métodos, mas acessaremos eles como se fossem atributos

  Com o método get podemos acessar velocidadeAtual em outros documentos

  Get vai ler o atributo e Set vai alterar o atributo

  Nomenclatura: tipagem get/set nomeAtributo
  */
  
  int get velocidadeAtual {
    return this._velocidadeAtual;
  }

  // No set podemos colocar filtros para controlar mais a reatribuição de valor do atributo
  void set velocidadeAtual(int novaVelocidade) { // void pq set não retorna nada. Entre parênteses colocamos o tipagem e o nomeDoParâmetro que utilizaremos para fazer alteração do atributo
    bool deltaValido = (_velocidadeAtual - novaVelocidade).abs() <= 5;
    if(deltaValido && novaVelocidade >= 0 && novaVelocidade <= velocidadeMaxima) {
      this._velocidadeAtual = novaVelocidade;
    }
  // O que fizemos foi verificar a diferença absoluta (.abs() para que seja desconsiderado sinal negativo) entre _velocidadeAtual e novaVelocidade, daí se a diferença é maior que 5 não será possível reatribuir valor ao atributo. O novaVelocidade será o valor que estamos tentando reatribuir ao atributo (carro.velocidadeAtual = 500;)
  }

  /*
  Poderíamos fazer o seguinte:
  
  void set valocidadeAtual(int novaVelocidade) {
    this._velocidadeAtual = novaVelocidade;
  }

  Não colcoamos nenhum filtro, assim, é como se não tivéssemos feito nada, poderemos modificar velocidadeAtual sem nenhum critério
  */

  int acelerar() {
    if(_velocidadeAtual + 5 >= velocidadeMaxima) {
      _velocidadeAtual = velocidadeMaxima;
    } else {
      _velocidadeAtual += 5;
    }
    return _velocidadeAtual;
  }

  int frear() {
    if(_velocidadeAtual - 5 <= 0) {
      _velocidadeAtual = 0;
    } else {
      _velocidadeAtual -= 5;
    }
    return _velocidadeAtual;
  }

  bool estaNoLimite() {
    return _velocidadeAtual == velocidadeMaxima;
  }

  bool estaParado() {
    return _velocidadeAtual == 0;
  }
}