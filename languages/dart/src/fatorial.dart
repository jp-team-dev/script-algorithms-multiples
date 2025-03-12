import 'dart:io';

void main() {
  String option = 's';

  while (option == 's') {
    if (option == 's') {
      print('Digite um valor inteiro positivo para calcular o fatorial:');
      int num = int.parse(stdin.readLineSync()!);

      if (num < 0) {
        print('Por favor, insira um número inteiro positivo.\n');
        continue;
      }

      // Setando o valor default para o resultado e contador
      int result = 1;
      int count = 1;

      // Exibindo o resultado na tela
      print('O fatorial correspondente de $num é\n');

      // Enquanto [count] for menor ou igual ao valor [n] inserido pelo usuário
      while (count <= num) {
        // result = result * count
        result *= count;
        print('Passo $count: $result');
        // coutn = count + 1
        count += 1;
      }

      // Exibindo o resultado na tela
      print('\nO fatorial de $num é $result\n');
    } else {
      print('Você escolheu SAIR!\n');
    }

    print(
      'Deseja rodar o código novamente?\n\nPressione [s] para SIM\nOu\nPressione [n] para NÃO\n',
    );
    option = stdin.readLineSync()!;
  }

  if (option != 's') {
    print('\nVocê escolheu SAIR!\n');
    exit(0);
  }
}
