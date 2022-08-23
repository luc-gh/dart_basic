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


  //---------------------------------------------------------------------------------------------------------------
  //LISTAS: coleção ordenada de itens, separados por vírgulas e limitados por chaves.
  print("LISTS");

  //---------------------------------------------------------------------------------------------------------------
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

  //---------------------------------------------------------------------------------------------------------------
  //SETS: coleção desordenada de itens, separados por vírgula e limitados por colchetes.
  print("\nSETS");

  var halogenios = {'flúor', 'cloro', 'bromo', 'iodo', 'astato', 'tenesso'};
  //Para criar sets vazios:
  var vazio1 = <String>{};
  Set<String> vazio2 = {};
  print(vazio2);
  //Para adicionar elementos:
  vazio1.add("elemento");
  vazio2.addAll(halogenios);
  print(vazio2);
  //Tamanho:
  print(vazio2.length); //6
  //Sets constantes:
  final setConstante = const {1,2,3};
  //setConstante.add(4); //Erro
  print(setConstante);
  //Operadores de propagação (... e ...?) e os comandos e if e for funcionam para sets assim como para lists.

  //---------------------------------------------------------------------------------------------------------------
  //MAPS: mapas são objetos que associam chaves e valores.
  // É uma coleção de dados e características destes, separados por chaves e organizados com vírgulas e dois pontos.
  var gasesNobres = {
  //chave: valor
    2: 'He',
    10: 'Ne',
    18: 'Ar',
    36: 'Kr',
    54: 'Xe',
    86: 'Rn',
    118: 'Og'
  };
  print(gasesNobres);
  //Dart assumirá gasesNobres como do tipo Map<int, String>. Caso tente adicionar outra chave/valor que não seja desse padrão, ocorrerá um erro.

  //Também é possível criar mapas com o construtor Map:
  var moedas = Map<String, String>();
  moedas['BRL'] = 'Real';
  moedas['USD'] = 'Dólar estadunidense';
  moedas['EUR'] = 'Euro';
  moedas['GPB'] = 'Libra esterlina';
  moedas['JPY'] = 'Iene';
  moedas['CNY'] = 'Remimbi';
  moedas['ARS'] = 'Peso Argentino';
  print(moedas);

  //Para adicionar uma chave e valor ao mapa:
  var moveis = {'TV': 'sala'};
  moveis['fogão'] = 'cozinha';
  moveis['mesa'] = 'cozinha';
  //As chaves são únicas, mas os valores podem se repetir.

  //Para confirmar um valor:
  bool? existe;
  if(moveis['mesa'] == 'cozinha'){existe = true;};
  print(existe);

  //Ao acessar uma chaves inexistente, adquire-se o valor NULL:
  var naoExiste = moveis['banheiro'];
  print(naoExiste);

  //O método .length acessa o número de pares de chaves e valores do mapa:
  print(moedas.length); //7

  //O comando const permite criar um mapa constante:
  final mapaConstante = {
    0: true,
    1: false,
    2: false,
    3: true,
    4: null,
    5: false,
    6: true
  };
  //mapaConstante[7] = true;  //Erro
  print(mapaConstante);

  //Operadores de propagação (... e ...?) e os comandos e if e for funcionam para sets assim como para lists.

  //---------------------------------------------------------------------------------------------------------------

}