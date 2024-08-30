import 'dart:io';

String getUserInput(String prompt) {
  stdout.write('$prompt: ');
  return stdin.readLineSync() ?? '';
}

void displayMessage(String message) {
  print(message);
}

Map<String, dynamic> promptForAccountDetails() {
  String name = getUserInput('Enter account name');
  double balance = double.tryParse(getUserInput('Enter initial balance')) ?? 0.0;
  return {
    'name': name,
    'balance': balance,
    'transactionHistory': 'Initial balance: $balance\n',
  };
}
