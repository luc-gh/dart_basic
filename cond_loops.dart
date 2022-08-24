void main(){
  //if-else
  int a = 0;
  if(a == 0){
    print("Condição verdadeira.");
  }
  else{
    print("Condição falsa.");
  }

  //for (clássico)
  const b = 5;
  for(int i = 0; i < b; i++){
    print(i);
  }

  //for-each
  var letras = ['a','b','c'];
  letras.forEach((n) => print(n));

  var simbolos = ['/','-','+','*','\\','&','@','#'];
  simbolos.forEach(print);

  //for-in
  List<int> numeros = [1,2,3,4,5];
  for(final n in numeros){
    print(n);
  }

  //while
  double d = 2.3, c = 0.9;
  while(c < d){
    print(c);
    c += 0.1;
  }

  //do-while
  var m = 5, n = 6;
  do{
    print(m+n);
    m++;
  } while(m < n);

  //break
  for(var i = 0; i < 5; i++){
    print(i);
    if (i == 3) break;  //para a iteração
  }

  //continue
  for(int j = 0; j < 20; j++){
    if (j % 2 == 0) continue;
    print(j);
  }

  //switch-case
  var status = 'APROVADO';
  switch(status){
    case 'REPROVADO':
      print("Bye, bye");
      break;
    case 'APROVADO':
      print("Boa sorte");
      break;
    default:
      print("Puts");
  }

  //Lógica fall-through (queda-livre):
  var vetor = [0,1,2,3,4,5,6,7,8,9];
  vetor.forEach((elemento) {
    switch(elemento){
      case 0:
      case 2:
      case 4:
      case 6:
      case 8:
        print('PAR');  //funcionará para todos os casos anteriores
        break;
      case 1:
      case 3:
      case 5:
      case 7:
      case 9:
        print('IMPAR');
        break;
    }
  });

  var l = ['f','k','s'];
  l.forEach((elemento) {  //este elemento só existe neste escopo, logo a variável do for-each anterior não interferirá aqui
    switch(elemento){
      case 'f':
        print("Parte 1");
        continue s;
      case 'k':
        print("Fora das partes");
        break;
      s:
      case 's':
        print("Parte 2");
        break;
    }
  });
}