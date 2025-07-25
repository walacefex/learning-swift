protocol Conta {
    var saldo: Double { get set }
    
    func sacar(_ valor: Double)
    
    func depositar(_ valor: Double)
}

class ContaCorrente: Conta {
 var saldo: Double
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    init(saldo: Double) {
        self.saldo = saldo
    }
    
    
}

