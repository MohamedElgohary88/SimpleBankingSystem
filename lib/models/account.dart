class Account {
  final String id;
  String name;
  double balance;
  String transactionHistory;

  Account(
      {required this.id,
      required this.name,
      required this.balance,
      required this.transactionHistory});

  void deposit(double amount) {
    balance += amount;
    transactionHistory += 'Deposit: $amount\n';
  }

  void withdraw(double amount) {
    balance -= amount;
    transactionHistory += 'Withdrawal: $amount\n';
  }

  void viewTransactions() {
    print(transactionHistory);
  }

  @override
  String toString() {
    return 'Account{id: $id, name: $name, balance: $balance, transactionHistory: $transactionHistory}';
  }
}
