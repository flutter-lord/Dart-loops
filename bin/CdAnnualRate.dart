import 'dart:io';

void main() {
  stdout.write('Initial Amount Deposited: ');
  double initialAmount = double.parse(stdin.readLineSync()!);

  stdout.write('Enter annual percentage yield: ');
  double annualPercentage = double.parse(stdin.readLineSync()!);

  stdout.write('Enter maturity period (number of months): ');
  int months  = int.parse(stdin.readLineSync()!);

  double monthlyRate = annualPercentage / 1200;
  double amount = 10000 ;

  for (int i = 1; i <= months; i++) {
    if (i== 1) {
      amount =  initialAmount + ( initialAmount * monthlyRate);
    }
    else {
      amount = amount + (amount * monthlyRate);
    }

    print('After $i month(s), The CD is worth \$${amount.toStringAsFixed(2)}');
  }
}