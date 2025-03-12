import 'dart:io';

void main() {
  String option = 's';

  while (option == 's') {
    if (option == 's') {
      print('Digite o valor correspondente ao lado:');
      int lado = int.parse(stdin.readLineSync()!);

      int perimetro = lado * 4;
      int area = lado * lado;

      print(
        'O valor correspondente ao perímetro é $perimetro e o valor correspondente à área é $area!\n',
      );
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
