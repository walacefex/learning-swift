var count = 1

while count <= 10 {
    print("Eu amo a linguagem Swift")
    count += 1
}

repeat {
    print("Eu amo a linguagem Swift")
} while count <= 10

var soma = 0

for i in 1...10 {
    soma += i
}
print(soma)


var count2 = 1

while count2 <= 10 {
    count2 += 1
    if count2 == 5 {
        //There are two possibilities to use the word break or continue
        break
    }
    print(count2)
}
