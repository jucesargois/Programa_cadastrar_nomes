import 'dart:io';

main() {
  //programa para cadastrar nome dos pais.
  //opção para edição dos nomes.
  //opção para finalizar o programa.
  //repetir tabela de opções enquanto usuario não confirmar saida.
  String? nomemae;
  String? nomepai;
  String? opcoes;

  bool condicao = true;

  print("Digite o nome da mãe: ");
  nomemae = stdin.readLineSync();
  print("---------------------------------------");
  print(nomemae);

  print("=======================================");
  //print("\n");

  print("Digite o nome do pai: ");
  nomepai = stdin.readLineSync();
  print("---------------------------------------");
  print(nomepai);

  print("\n");
  print("=======================================");

  menuEdicao(nomemae, nomepai, opcoes, condicao);
}

menuEdicao(nomemae, nomepai, opcoes, condicao) {
  while (condicao) {
    switch (opcoes) {
      case "SAIR":
        print("===========PROGRAMA FINALIZADO==============");
        //condicao = false;
        break;
      case "1":
        print("Nome cadastrado da mãe: $nomemae");
        print("Alterar para: ");
        nomemae = stdin.readLineSync();
        print("---------------------------------------");
        print("Nome alterado para: $nomemae");
        //condicao = false;
        break;
      case "2":
        print("Nome cadastrado do pai: $nomepai");
        print("Alterar para: ");
        nomepai = stdin.readLineSync();
        print("---------------------------------------");
        print("Nome alterado para: $nomepai");
        //condicao = false;
        break;
      default:
    }

    if (opcoes == "SAIR") {
      condicao = false;
    } else if (condicao == true) {
      print(
          "Escolha uma das opções abaixo:\n 1-Para alterar nome da mãe.\n 2-Para alterar nome do pai.\nDigite SAIR para confirmar.");
      opcoes = stdin.readLineSync();
    } else if (condicao == true) {
      print(
          "Escolha uma das opções abaixo:\n 1-Para alterar nome da mãe.\n 2-Para alterar nome do pai.\nDigite SAIR para confirmar.");
      opcoes = stdin.readLineSync();
    } else {
      condicao = false;
    }
  }
}
