main() {
  saudarPessoa(nome: "Joao", idade: 33);
  saudarPessoa(idade: 47, nome: "Maria");

  imprimirData();
  imprimirData(ano: 2020);
  imprimirData(ano: 2020, mes: 12);
}

// params entre chaves = params nomeados
saudarPessoa({String nome, int idade}) {
  print("Ola $nome, nem parece que vc tem $idade anos!");
}

imprimirData({int dia = 1, int mes = 1, int ano = 1970}) {
  print("$dia/$mes/$ano");
}
