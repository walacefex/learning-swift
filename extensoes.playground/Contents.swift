class Conta {
    var nome: String
    var saldo: Double
    
    func depositar(_ valor: Double) {
        self.saldo += valor
    }
    
    func sacar(_ valor: Double) {
        self.saldo -= valor
    }
    
    func transferir(_ contaDestinado: Conta, _ valor: Double){
        sacar(valor)
        contaDestinado.depositar(valor)
    }
    
    init(nome: String, saldo: Double) {
        self.nome = nome
        self.saldo = saldo
    }
}


var contaCliente = Conta(nome: "João", saldo: 1000)
contaCliente.depositar(100)
print(contaCliente.saldo)

var contaCliente2 = Conta(nome: "Maria", saldo: 2000)
