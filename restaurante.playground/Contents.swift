struct Restaurant {
    var nome: String
    var tipoDeComida: String
    var numeroDoPedido: Int = 0
    
    mutating func recebePedido() {
        self.numeroDoPedido += 1
    }
    
    func calculaTotalPedidos() -> Double {
        return 35.0 * Double(self.numeroDoPedido)
    }
}

var restaurante = Restaurant(nome: "Pizzaria Felix", tipoDeComida: "Italiana")
restaurante.recebePedido()
restaurante.recebePedido()
restaurante.calculaTotalPedidos()

