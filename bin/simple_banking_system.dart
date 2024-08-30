import 'package:simple_banking_system/services/account_service.dart';
import 'package:simple_banking_system/utils/input_output.dart';

void main() {
  final accountService = AccountService();

  while (true) {
    displayMenu();
    String choice = getUserInput('Enter your choice');

    switch (choice) {
      case '1':
        var details = promptForAccountDetails();
        accountService.createAccount(
          name: details['name'],
          balance: details['balance'],
          transactionHistory: details['transactionHistory'],
        );
        break;

      case '2':
        String name = getUserInput('Enter account name');
        double amount = double.tryParse(getUserInput('Enter deposit amount')) ?? 0.0;
        try {
          accountService.deposit(name: name, amount: amount);
          displayMessage('Deposit successful.');
        } catch (e) {
          displayMessage('Error: ${e.toString()}');
        }
        break;

      case '3':
        String name = getUserInput('Enter account name');
        double amount = double.tryParse(getUserInput('Enter withdrawal amount')) ?? 0.0;
        try {
          accountService.withdraw(name: name, amount: amount);
          displayMessage('Withdrawal successful.');
        } catch (e) {
          displayMessage('Error: ${e.toString()}');
        }
        break;

      case '4':
        String name = getUserInput('Enter account name');
        try {
          double balance = accountService.getBalance(name: name);
          displayMessage('Balance: $balance');
        } catch (e) {
          displayMessage('Error: ${e.toString()}');
        }
        break;

      case '5':
        String name = getUserInput('Enter account name');
        try {
          String history = accountService.getTransactionHistory(name: name);
          displayMessage('Transaction History:\n$history');
        } catch (e) {
          displayMessage('Error: ${e.toString()}');
        }
        break;

      case '6':
        displayMessage('Exiting the system...');
        return;

      default:
        displayMessage('Invalid choice, please try again.');
    }
  }
}

void displayMenu() {
  print('''
1. Create Account
2. Deposit Money
3. Withdraw Money
4. Check Balance
5. View Transaction History
6. Exit
''');
}