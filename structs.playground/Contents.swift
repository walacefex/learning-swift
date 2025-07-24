struct ContaCorrente {
    var saldo: Double = 0.0
    
    mutating func sacar(_ valor: Double) {
        guard valor <= saldo else {
            fatalError("Saldo insuficiente")
        }
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        guard valor > 0 else {
            fatalError("Valor inválido para depósito")
        }
        saldo += valor
    }
}

var contaCorrenteCliente1 = ContaCorrente()
print(contaCorrenteCliente1.saldo)
contaCorrenteCliente1.depositar(1000)
print(contaCorrenteCliente1.saldo)
contaCorrenteCliente1.sacar(500)
print(contaCorrenteCliente1.saldo)

var contaCorrenteCliente2 = ContaCorrente()
contaCorrenteCliente2.depositar(200)
print(contaCorrenteCliente2.saldo)
contaCorrenteCliente2.sacar(200)
print(contaCorrenteCliente2.saldo)

