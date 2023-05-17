import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/Account.dart';

void main() {

  //Criação do banco

  BankController bankController = BankController();


  //Criação de contas

  bankController.addAccount(
      id: "Ricarth",
      account: Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true)
  );

  bankController.addAccount(
      id: "Kako",
      account: Account(name: "Caio Couto", balance: 600, isAuthenticated: true)
  );


  //Efetuando transferência

  try {

    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", ammount: 50);

    //Printando resultado
    print(result);

  } on SenderIdInvalidException catch (e) {
    print("O ID '${e.idSender}' do remetente não é um ID válido");

  } on ReceiverIdInvalidException catch (e) {
    print("O ID '${e.idReceiver}' do destinatário não é um ID válido");

  } on SenderNotAuthenticatedException catch (e) {
    print("O usuário remetente de ID '${e.idSender}' não está autenticado");

  }


}