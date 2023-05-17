import '../models/Account.dart';

class BankController {

  //classe responsável por gerenciar conta e fazer as transações entre elas

  final Map <String, Account> _database = {}; //Armazenamento da instância do "banco de dados" que gerencia contas cadastradas

  //construtor de adição de conta:
  addAccount( { required String id, required Account account } ) { _database[id] = account;}


  //Método de verificação de id:
  bool verifyId (String id) {
    return _database.containsKey(id);
  }



  //método para transação bancária entre duas contas com verificações (validade de IDs, autenticação dos usuários, saldo disponível etc)
  bool makeTransfer ( { required String idSender, required String idReceiver, required double ammount } ) {

    //verificação se ID de remetente é válido
    if (!verifyId(idSender)) {
      return false;
    }


    //verificação se ID de destinatário é válido
    if (!verifyId(idReceiver)) {
      return false;
    }

    Account accountSender = _database[idSender]!;
    Account accountReceiver = _database[idReceiver]!;

    //verificação se remetente está autenticado
    if (!accountSender.isAuthenticated) {
      return false;
    }

  }


}



