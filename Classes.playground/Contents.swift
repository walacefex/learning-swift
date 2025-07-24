class ContaCorrente {
    var saldo: Double
    var nome: String
    
    func depositar(_ valor: Double) {
        self.saldo += valor
    }
    
    func sacar(_ valor: Double) {
        self.saldo -= valor
    }
    
    init(nome: String){
        saldo = 0.0
        self.nome = nome
    }
}


var contaCorrenteCliente1 = ContaCorrente(nome: "João")
contaCorrenteCliente1.depositar(1000.0)
print(contaCorrenteCliente1.saldo)
contaCorrenteCliente1.sacar(500.0)

print("Saldo do cliente 1: \(contaCorrenteCliente1.saldo)")

var contaCorrenteCliente2 = ContaCorrente(nome: "Maria")
contaCorrenteCliente2.depositar(2000.0)
print(contaCorrenteCliente2.saldo)
contaCorrenteCliente2.sacar(1000.0)

print("Saldo do cliente 2: \(contaCorrenteCliente2.saldo)")
