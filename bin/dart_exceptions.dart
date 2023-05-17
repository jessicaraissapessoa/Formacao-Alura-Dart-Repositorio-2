import 'controllers/bank_controller.dart';
import 'models/Account.dart';

// void main() {
//
//   //Criação do banco
//
//   BankController bankController = BankController();
//
//
//   //Criação de contas
//
//   bankController.addAccount(
//       id: "Ricarth",
//       account: Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true)
//   );
//
//   bankController.addAccount(
//       id: "Kako",
//       account: Account(name: "Caio Couto", balance: 600, isAuthenticated: true)
//   );
//
//
//   //Efetuando transferência
//
//   bool result = bankController.makeTransfer(idSender: "Kako", idReceiver: "Ricarth", ammount: 700);
//
//
//   //Printando resultado
//   print(result);
//
//
// }

//outra main para lidar com as exceções:

void main() {

  print(Account(name: 'Ricarth', balance: 200, isAuthenticated: true));
  throw Account(name: 'Ricarth', balance: 200, isAuthenticated: true);
  print('Nunca chegará em mim');

}