var notas: [Double] = [10.0, 9.5, 8.0]
var arrayVazio = Array<String>()

notas.isEmpty //isEmpty é para validar se o Array está vazio
arrayVazio.isEmpty

notas.count
notas.min()
notas.max()
notas.contains(9.5)
notas.firstIndex(of: 9.5)

//Para inserir valores
notas.append(9.0)

notas.remove(at: 1)

//inserir e selecionar em qual posição
notas.insert(5.0, at: 2)
notas += [8.2]
notas[1] = 9.9

print(notas)

notas.removeLast()
print(notas)


var elementoRemovido = notas.removeLast()
print(elementoRemovido)

print(notas)

for nota in notas {
    print(nota)
}

for i in 0..<notas.count {
    print(notas[i])
}

for (elemento, index) in notas.enumerated() {
    print(elemento, index)
}
