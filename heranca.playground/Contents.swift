class Conta {
    var saldo: Double = 0.0
    var nome: String
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    init(nome: String){
        self.nome = nome
    }
}


class ContaPoupanca: Conta {
    var possuiCartaoDebito: Bool
    
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("O cliente está solicitando cartão débito")
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 10
    }
    
    init(nome: String, possuiCartaoDebito: Bool){
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
    }
}

var contaPoupanca = ContaPoupanca(nome: "João", possuiCartaoDebito: true)
contaPoupanca.depositar(1000)
print(contaPoupanca.saldo)
contaPoupanca.sacar(50)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()


class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double){
        print("O cliente está solicitando um emprestimo no valor de \(valor)")
        super.depositar(valor)
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 5
    }
}


var contaCorrente = ContaCorrente(nome: "Maria")
contaCorrente.depositar(500)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(20000)
print(contaCorrente.saldo)
contaCorrente.sacar(100)
print(contaCorrente.saldo)



func exibeSaldoDaConta(_ conta: Conta){
    if conta is ContaCorrente{
        print("Conta é do tipo conta corrente")
    }
    
    if let contaConrrente = conta as? ContaCorrente{
        contaConrrente.solicitarEmprestimo(10000)
    }
    
    guard let contaPoupanca = conta as? ContaPoupanca else {return}
    print(contaPoupanca.possuiCartaoDebito)
          
}

exibeSaldoDaConta(contaPoupanca)
exibeSaldoDaConta(contaCorrente)
