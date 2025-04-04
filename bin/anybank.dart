void main() {

  Conta contaMatheus = Conta("Matheus", 1000);
  Conta contaRoberto = Conta("Roberto", 2000);

  List<Conta> contas = <Conta>[contaMatheus, contaRoberto];

  for(Conta conta in contas){
    print(conta.titular);
    print(conta.saldo);
  }

  contaRoberto.saldo = 5000;
  print(contaRoberto.saldo);

  contaMatheus.receber(500);

  print(contaMatheus.titular);
  print(contaMatheus.saldo);

  contaMatheus.enviar(200);

  print(contaMatheus.titular);
  print(contaMatheus.saldo);
}

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);

  void receber(double valor){
    saldo += valor;
  }

  void enviar(double valor){
    saldo -= valor;
  }
}