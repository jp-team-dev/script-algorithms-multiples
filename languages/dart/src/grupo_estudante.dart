import 'dart:io';

void main() {
  String option = 's';

  int counter = 0;

  int man = 0;
  int woman = 0;

  int man_over_thirty = 0;
  int woman_under_eighteen = 0;

  int oldest_age = 0;
  int youngest_age = 999999999;

  String oldest_age_name = '';
  String youngest_age_name = '';

  while (option == 's') {
    if (option == 's') {
      print('Digite o seu nome completo\n');
      String name = stdin.readLineSync()!;

      print('Digite dua idade\n');
      int old_age = int.parse(stdin.readLineSync()!);

      print(
        "Informe seu sexo? \nPressione [M] para MASCULINO Ou Pressione [F] para FEMININO\n",
      );
      String gender = stdin.readLineSync()!;

      counter = counter + 1;

      if (gender == 'M') {
        man = man + 1;
        if (old_age > 30) {
          man_over_thirty = man_over_thirty + 1;
        }
      } else {
        woman = woman + 1;
        if (old_age < 18) {
          woman_under_eighteen = woman_under_eighteen + 1;
        }
      }

      if (old_age > oldest_age) {
        oldest_age = old_age;
        oldest_age_name = name;
      }
      if (old_age < youngest_age) {
        youngest_age = old_age;
        youngest_age_name = name;
      }

      double percentage = (man / counter) * 100;
      double woman_percentage = (woman / counter) * 100;
      double man_over_thirty_percentage = (man_over_thirty / counter) * 100;
      double woman_under_eighteen_percentage =
          (woman_under_eighteen / counter) * 100;

      double media = ((percentage + woman_percentage) / 2);

      //Exibindo o resultado à cada repetição do "While"
      print(
        '\nResultado pós repetição,\nTotal de homens: $percentage, \nTotal de mulheres: $woman_percentage, \nO nome da pessoa mais velha é: $oldest_age_name, \nO nome da pessoa mais jovem é: $youngest_age_name, \nMédia de idade do grupo: $media, \nQuantidade de homens com mais de 30 anos $man_over_thirty_percentage, \nQuantidade de mulheres com menos de 18 anos $woman_under_eighteen_percentage',
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
