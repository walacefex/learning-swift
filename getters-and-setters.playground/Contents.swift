class Conta {
    var saldo: Double = 0.0 {
        willSet(novoValor) {
            print("O saldo está sendo alterado. O seu novo valor será de \(novoValor)")
        }
        
        didSet {
            print("O saldo está sendo alterado. Seu valor antigo era de  \(oldValue)")
        }
    }
    var nome: String
    
    static let taxaTransferencia = 0.1
    
    var negativado: Bool {
        return saldo < 0
    }
    
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

let contaCliente1 = Conta(nome: "João")
contaCliente1.sacar(100)
