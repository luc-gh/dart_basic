import 'dart:io';

void main() {
  //Leitura textual simples
  print("Escreva algo: ");
  print("Você escreveu: " + stdin.readLineSync()!);  //! indica que valor pode ser nulo

  stdout.write("\nDigite um número inteiro a: ");  //linha não será quebrada na leitura
  int a = int.parse(stdin.readLineSync()!);  //a leitura quebra a linha automaticamente

  //Leitura numérica indireta: verificação de nulidade é necessária
  print("Digite um valor real b: ");  //a linha já será quebrada antes do próximo comando
  String? b = stdin.readLineSync();  //quebra mais uma linha
  double? c;  //A interrogação indica que b pode ser nulo
  if(b != null){
    c = double.parse(b);
  }
  else(){
    c = null;
  };

  //Métodos de escrita
  stdout.writeln("Valor de n: " + a.toString());  //writeln quebra uma linha
  stdout.writeln("O tipo de dado de a é: " + a.runtimeType.toString());
  //O método toString é necessário pois não é possível concatenar Strings e outros tipos diretamente
  print("Valor de b: $c");  //print quebra linha automaticamente e a variável b é usada porque foi feita a verificação
  print("O tipo de dado de a é: ${c.runtimeType}");  //as chaves limitam o escopo de variável definido com o $
}