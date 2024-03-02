class BankAccount {
  String accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print('Insufficient balance.');
    }
  }

  double getBalance() {
    return balance;
  }
}

void main() {
  BankAccount account1 = BankAccount('123456789', 'John Doe', 1000);
  BankAccount account2 = BankAccount('987654321', 'Jane Smith', 5000);

  account1.deposit(500);
  account1.withdraw(200);

  account2.deposit(1000);
  account2.withdraw(700);

  print('Account 1 balance: \$${account1.getBalance().toStringAsFixed(2)}');
  print('Account 2 balance: \$${account2.getBalance().toStringAsFixed(2)}');
}

//2- Bank Account Management:
//Design a class for a bank account that includes attributes //like 
//account number, account holder name, balance, and methods to 
//deposit and withdraw money. Write a program that creates two 
//bank account objects, performs a series of deposits and 
//withdrawals, and prints the final balance of each account.
