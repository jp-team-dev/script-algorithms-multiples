import 'dart:io';

void main() {
  String option = 's';

  while (option == 's') {
    if (option == 's') {
      print('Digite o seu nome completo\n');
      String name = stdin.readLineSync()!;

      print('Digite o ano de seu nascimento, ex.: 1979\n');
      int birthYear = int.parse(stdin.readLineSync()!);

      // Recuperando a data, mês, dia e data atual dp sistema operacional "windows/linux/mac"
      int currentYear = DateTime.now().year;
      // ignore: unused_local_variable
      int currentMonth = DateTime.now().month;
      // ignore: unused_local_variable
      int currentDay = DateTime.now().day;
      // ignore: unused_local_variable
      DateTime today = DateTime.now();

      int currentDate = (currentYear - birthYear);

      // Verifica se é menor de idade ou maior de idade
      if (currentDate > 0 && currentDate <= 17) {
        // Exibe o resultado na tela
        print(
          'Olá $name, você nasceu no ano de $birthYear, você tem $currentDate anos de idade, portanto você NÃO tem a maioridade, portanto você é MENOR de idade!\n',
        );
      } else {
        // Exibe o resultado na tela
        print(
          'Olá $name, você nasceu no ano de $birthYear, você tem $currentDate anos de idade, portanto você tem a maioridade, ou seja você é MAIOR de idade!\n',
        );
      }
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
