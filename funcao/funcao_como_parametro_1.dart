import 'dart:math';

void executar(Function numeroPar, Function numeroImpar) {
  var sorteado = Random().nextInt(10);
  print('O valor sorteado foi: $sorteado');
  sorteado % 2 == 0 ? numeroPar() : numeroImpar();
}

main() {
  var meuNumeroPar = () => print('Eita! O valor eh par!');
  var meuNumeroImpar = () => print('Legal! O valor eh impar!');

  executar(meuNumeroPar, meuNumeroImpar);
}
