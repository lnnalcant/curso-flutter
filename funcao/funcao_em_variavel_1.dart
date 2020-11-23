main() {
  // atribuir funcao a variavel:
  // tipo nome = valor;
  int Function(int, int) soma1 = somaFuncao;
  print(soma1(2, 3));

  // exemplo com funcao anonima:
  int Function(int, int) soma2 = (x, y) {
    return x + y;
  };

  print(soma2(2, 2));

  // Por inferencia
  var soma3 = ([int x = 1, int y = 1]) {
    return x + y;
  };
  print(soma3(5, 5));
  print(soma3(5));
  print(soma3());
}

int somaFuncao(int a, int b) {
  return a + b;
}
