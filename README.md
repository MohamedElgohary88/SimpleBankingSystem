# Simple Banking System

This is a console-based banking system written in Dart. The system allows users to manage bank accounts, including creating accounts, depositing and withdrawing funds, checking balances, and viewing transaction history.

## Features

- **Create Account:** Create a new bank account with an initial balance and transaction history.
- **Deposit Money:** Add funds to an existing account.
- **Withdraw Money:** Withdraw funds from an existing account.
- **Check Balance:** View the current balance of an account.
- **View Transaction History:** Display a list of all transactions for a specific account.

## Getting Started
Prerequisites
Dart SDK: Make sure Dart is installed on your system. You can download it from dart.dev.

## Running the Application
Clone the repository:
git clone https://github.com/yourusername/simple_banking_system.git
cd simple_banking_system
Run the application:

dart run bin/simple_banking_system.dart
Follow the on-screen instructions to interact with the banking system.

## Usage
### Main Menu
After running the application, you will be presented with the following options:

1. Create Account
2. Deposit Money
3. Withdraw Money
4. Check Balance
5. View Transaction History
6. Exit
Example Workflow
Create Account:

Select 1 from the menu.
Enter the account name and initial balance.
Deposit Money:

Select 2 from the menu.
Enter the account name and the amount to deposit.
Withdraw Money:

Select 3 from the menu.
Enter the account name and the amount to withdraw.
Check Balance:

Select 4 from the menu.
Enter the account name to view the current balance.
View Transaction History:

Select 5 from the menu.
Enter the account name to view the transaction history.
Exit:

Select 6 to exit the application.

## Contributing
If you would like to contribute to this project, please fork the repository and submit a pull request. Any improvements, bug fixes, or new features are welcome.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contact
For any questions or feedback, feel free to contact me at [mohamed.abdelazim.elgohary@gmail.com] or visit my GitHub profile.









## Project Structure

```plaintext
simple_banking_system/
│
├── bin/
│   └── simple_banking_system.dart    # Main entry point of the application
│
├── lib/
│   ├── account_service.dart          # Contains the AccountService class and account management logic
│   └── input_output.dart             # Contains functions for handling user input and output
│
└── README.md                         # Project documentation
