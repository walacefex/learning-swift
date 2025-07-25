class Empregado {
  var nome: String
  var salario: Double {
    willSet {
      if newValue > salario {
        print("Parabéns, você recebeu um aumento no salário.")
      } else if newValue == salario {
        print("Parece que não houve uma promoção dessa vez.")
      }
    }

    didSet {
      if salario < oldValue {
        print("O novo salário não pode ser menor do que era anteriormente.")
        salario = oldValue
      }
    }
  }

  init(nome: String, salario: Double) {
    self.nome = nome
    self.salario = salario
  }
}

let empregado = Empregado(nome: "Daniel", salario: 3000)
empregado.salario = 3000
empregado.salario = 4000
empregado.salario = 3000
