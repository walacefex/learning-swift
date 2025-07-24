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
    var possuiCartaoDebito = false
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("O cliente está solicitando cartão débito")
    }
}

var contaPoupanca = ContaPoupanca(nome: "João")
contaPoupanca.depositar(1000)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()


class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double){
        print("O cliente está solicitando um emprestimo no valor de \(valor)")
    }
}


var contaCorrente = ContaCorrente(nome: "Maria")
contaCorrente.depositar(500)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(20000)
