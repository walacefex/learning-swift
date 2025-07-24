class Retangulo {
    var base: Double
    var altura: Double
    
    init(base: Double, altura: Double) {
        self.base = base
        self.altura = altura
    }
    
    func calcularArea() -> Double {
        return base * altura
    }
    
    func calcularPerimetro() -> Double {
        return 2 * (base + altura)
    }
}

let retangulo = Retangulo(base: 10, altura: 20)
print("Área: \(retangulo.calcularArea())")
print("Perímetro: \(retangulo.calcularPerimetro())")
