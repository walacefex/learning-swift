var telefone: String?
telefone = "+55 11 9 6565 6565"
print(telefone!) //Quando usamos o ! na frente do valor forçamos o valor opcional

if telefone != nil {
    print(telefone!)
}

// só pode chamar esse telefoneDesembrulhado dentro deste escopo
if let telefoneDesembrulhado = telefone {
    print(telefoneDesembrulhado)
}

if let telefone = telefone {
    print(telefone)
}

var celular: String?
celular = "+55 888888888"

// Optional binding
if let telefone = telefone, let celular = celular {
    print(telefone)
    print(celular)
}


func autenticar(usuario: String?, senha: String?){
    guard let usuario = usuario, let senha = senha else {
        return
    }
    print(usuario)
    print(senha)
}

autenticar(usuario: "Joao", senha: nil)


//optional chaining
//encadear as operaçoes

if let primeiroCaractere = telefone?.first {
    print(primeiroCaractere)
}


// Nil coalescing operator
var numeroQualquer: String?
numeroQualquer = "11 9123123123"
print(numeroQualquer ?? "Nenhum telefone")
