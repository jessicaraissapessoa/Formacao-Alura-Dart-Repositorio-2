class Account {

  //propriedades:
  String name;
  double balance;
  bool isAuthenticated;

  //construtor:
  Account(
    {
      required this.name,
      required this.balance,
      required this.isAuthenticated
    }
  );

  //método para editar saldo:
  editBalance({required value}) {
    balance = balance + value;
  }

}