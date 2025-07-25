class Pessoa {
    var nome: String
    var idade: Int
    var altura: Double
    var peso: Double
    
    var imc : Double {
         return peso / (altura * altura)
    }
    
    var adulto : Bool {
        return idade >= 18
    }
    
    init(nome: String, idade: Int, altura: Double, peso: Double) {
        self.nome = nome
        self.idade = idade
        self.altura = altura
        self.peso = peso
    }
}


let pessoa1 = Pessoa(nome: "João", idade: 25, altura: 1.70, peso: 70.0)

print("IMC de \(pessoa1.nome): \(pessoa1.imc)")
print("É adulto: \(pessoa1.adulto)")

