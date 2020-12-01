class Data {
  int dia;
  int mes;
  int ano;

  String obterDataFormatada() {
    return "$dia/$mes/$ano";
  }

  String toString() {
    return obterDataFormatada();
  }
}

main() {
  var dataAniversario = new Data();
  dataAniversario.dia = 03;
  dataAniversario.mes = 10;
  dataAniversario.ano = 2020;

  Data dataCompra = Data(); // new eh opcional
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;

  // print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");
  // print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}");
  String d1 = dataAniversario.obterDataFormatada();

  print("A data do aniversario eh $d1.");
  print("A data da compra eh ${dataCompra.obterDataFormatada()}.");

  print(dataCompra);
}
