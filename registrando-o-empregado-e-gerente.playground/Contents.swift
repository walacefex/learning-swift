class Empregado {
    let nome: String
    let salario: Double
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
}


class Gerente: Empregado {
  let departamento: String
    
    init(nome: String, salario: Double, departamento: String) {
        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }
}


class Vendedor: Empregado {
    func percentualComissao(_ numeroVendas: Int) -> Double {
        return (0.1 * 50.0 * Double(numeroVendas)) + self.salario
    }
}

func verificaTipo(_ empregado: Empregado) {
    if let gerente = empregado as? Gerente {
        print("O(a) empregado(a) \(gerente.nome) é um(a) gerente e está no departamento \(gerente.departamento).")
    } else if let vendedor = empregado as? Vendedor {
        print("O(a) empregado(a) \(vendedor.nome) é um(a) vendedor(a).")
    } else {
        print("O(a) empregado(a) \(empregado.nome) é de um outro tipo.")
    }
}

let vendedor = Vendedor(nome: "João", salario: 1000.0)
let gerente = Gerente(nome: "Maria", salario: 2000.0, departamento: "Marketing")

verificaTipo(gerente)
verificaTipo(vendedor)
