void executarPor(int qtde, Function(String) funcao, String valor) {
  for (int i = 0; i < qtde; i++) {
    funcao(valor);
  }
}

main() {
  print('Teste');
  executarPor(10, print, 'Larararara');
}
