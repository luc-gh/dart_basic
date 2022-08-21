void main(){
  //Demonstrações
  print("Variável - Valor - Tipo");

  //---------------------------------------------------------------------------------------------------------------
  //Genérica imutável: var
  var a = "palavra";
  var b = 55;
  var c = 9.1;

  print("a - $a - ${a.runtimeType}");
  print("b - $b - ${b.runtimeType}");
  print("c - $c - ${c.runtimeType}");

  //---------------------------------------------------------------------------------------------------------------
  //Números: int, double e num
  num m = 80;
  int n = -65;
  double o = -0.1;
  num p = 9.4;
  //a palavra var não é mais usada pois definir um tipo cria uma declaração oculta da variável
  print("m - $m - ${m.runtimeType}");
  print("n - $n - ${n.runtimeType}");
  print("o - $o - ${o.runtimeType}");
  print("p - $p - ${p.runtimeType}");

  //---------------------------------------------------------------------------------------------------------------
  //Strings
  String l = "abc";
  print("l - $l - ${l.runtimeType}");

  //---------------------------------------------------------------------------------------------------------------
  //Boolean: bool
  bool f = false;
  bool v = true;
  print("f - $f - ${f.runtimeType}");
  print("v - $v - ${v.runtimeType}");

  //---------------------------------------------------------------------------------------------------------------
  //Genérica mutável: dynamic
  dynamic x = true;
  dynamic y = x.toString();
  dynamic z = 96.2 + n.toDouble();

  print("x - $x - ${x.runtimeType}");
  print("y - $y - ${y.runtimeType}");
  print("z - ${z.toStringAsFixed(2)} - ${z.runtimeType}");  //z foi formatado para ter apenas duas casas decimais
  //a = 55;  //Erro: a só pode receber valores do tipo inicial ao qual foi declarada
  z = "a";   //Como z é dinâmica, pode receber valores de qualquer tipo a qualquer momento
  print("z - $z - ${z.runtimeType} -> z é dinâmica");

  //---------------------------------------------------------------------------------------------------------------
  //Símbolos: #
  var sym = #bar;
  Symbol symbol = Symbol('symbol');
  Symbol key = #print;

  print("sym - $sym - ${sym.runtimeType}");
  print("symbol - $symbol - ${symbol.runtimeType}");
  print("key - $key - ${key.runtimeType}");

  //---------------------------------------------------------------------------------------------------------------
  //Vetores (Matrizes ou arrays): List, Set e Map
  print("\n\n-- VETORES --\n");
  print("LISTS\n");

  var auto = ['carro', 'barco', 'avião'];
  assert(auto.length == 3);  //assert confirma que a condição proposta é verdadeira (caso não seja, ocorre um erro)

  var list = [1,2,3];
  assert(list[2] == 3);

  var listaConstante = const[4,5,6];
  //listaConstante[1] = 2;  //Erro: os valores de uma lista constante não podem ser alterados
  print(listaConstante);  //impressão de uma lista completa

  //É possível juntar duas listas (caso uma seja nula, é preciso a '?' para evitar um erro):
  var l1 = ['b','c','d'];
  var l2 = ['a',...l1, 'e'];
  print(l2.length);  //5
  var l3;
  var l4 = [0,...?l3];  //l3 tem valor NULL
  print(l4);

  //Listas também podem ser incrementadas com condições ou loops internos:
  int cond = 0;
  var mochila1 = ['Caneta', 'Caderno', if(cond == 0) 'Lápis', 'Borracha'];
  var mochila2 = ['Bocal', 'Estojo', if(cond == 1) 'Folha', 'Pincel'];  //Folha não será adicionada à lista
  print("cond: $cond\nmochila1: $mochila1\nmochila2: $mochila2");

  var planetas = ['Mercúrio','Vênus','Terra','Marte','Júpiter','Saturno','Urano','Netuno'];
  var listaPlanetas = ["Planetas: ", for(var i in planetas)'$i'];  //Bug: a vírgula é anexada à String inicial
  print(listaPlanetas);

  print("\nSETS\n");



}