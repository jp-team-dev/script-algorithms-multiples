import 'dart:io';

void main() {
  String option = 's';
  int count = 0;

  while (option == 's') {
    if (option == 's') {
      print('Digite um número inteiro qualquer:');
      int num = int.parse(stdin.readLineSync()!);

      for (int i = num; i <= 100; i++) {
        count = count + 1;
        print('Contagem progressiva! $i\n');
      }

      print('Contagem total de interações no loop! é $count\n');
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
