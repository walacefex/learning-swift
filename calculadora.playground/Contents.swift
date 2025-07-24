struct Calculadora {
    let numero1: Double
    let numero2: Double
    
    func soma() -> Double {
        return numero1 + numero2
    }
    
    func subtracao() -> Double {
        return numero1 - numero2
    }
    
    func multiplicacao() -> Double {
        return numero1 * numero2
    }
    
    func divisao() -> Double {
        return numero1 / numero2
    }
}

let calculadora = Calculadora(numero1: 20, numero2: 10)
print("Soma = \(calculadora.soma())")
print("Subtração = \(calculadora.subtracao())")
print("Divisão = \(calculadora.divisao())")
print("Multiplicação = \(calculadora.multiplicacao())")


class CalculadoraClasse {
    var numero1: Int
    var numero2: Int
    
    init(numero1: Int, numero2: Int) {
        self.numero1 = numero1
        self.numero2 = numero2
    }
    
    func soma() -> Int {
        return numero1 + numero2
    }
    
    func subtracao() -> Int {
        return numero1 - numero2
    }
    
    func divisao() -> Int {
        return numero1 / numero2
    }
    
    func multiplicacao() -> Int {
        return numero1 * numero2
    }
}

let calculadoraClasse = CalculadoraClasse(numero1: 20, numero2: 10)
print("Soma = \(calculadoraClasse.soma())")
print("Subtração = \(calculadoraClasse.subtracao())")
print("Divisão = \(calculadoraClasse.divisao())")
print("Multiplicação = \(calculadoraClasse.multiplicacao())")
