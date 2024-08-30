import '../models/account.dart';

class AccountService {
  final List<Account> accounts = [];

  void createAccount({
    required String name,
    required double balance,
    required String transactionHistory,
  }) {
    accounts.add(Account(
      id: generateUniqueId(),
      name: name,
      balance: balance,
      transactionHistory: transactionHistory,
    ));
  }

  String generateUniqueId() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }

  void deposit({required String name, required double amount}) {
    final account = accounts.firstWhere((a) => a.name == name,
        orElse: () => throw Exception('Account not found'));
    account.deposit(amount);
  }

  void withdraw({required String name, required double amount}) {
    final account = accounts.firstWhere((a) => a.name == name,
        orElse: () => throw Exception('Account not found'));
    account.withdraw(amount);
  }

  double getBalance({required String name}) {
    final account = accounts.firstWhere((a) => a.name == name,
        orElse: () => throw Exception('Account not found'));
    return account.balance;
  }

  String getTransactionHistory({required String name}) {
    final account = accounts.firstWhere((a) => a.name == name,
        orElse: () => throw Exception('Account not found'));
    return account.transactionHistory;
  }
}
