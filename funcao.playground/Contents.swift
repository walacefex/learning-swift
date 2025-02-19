func soma(_ numero1: Int, _ numero2: Int) -> Int{
    var resultado = numero1 + numero2
   return resultado
}

let resultado = soma(5, 3)
print(resultado)

//Argument label
func soma2(_ numero1: Int, com numero2: Int){
    var resultado = numero1 + numero2
    print(resultado)
}

soma2(5, com: 3)


func verificaAdulto (_ idade: Int) -> Bool{
    if idade >= 18 {
        return true
    }else{
        return false
    }
}

verificaAdulto(22)
verificaAdulto(17)
