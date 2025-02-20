/*
 Crie uma função que receba um parâmetro que representa o nome de uma pessoa. Esse parâmetro é um **opcional**, ou seja, ele pode conter um valor ou ser nulo.
 Faça o tratamento correto dessa opcional:
 Caso seja nulo, exiba no console “Nome não especificado”;
 Caso contenha algum valor, exiba no console esse valor.
 */
func mostraNome(nome: String?) {
    guard let nome = nome else {
        print("Nome não identificado")
        return
    }
    print(nome)
}
mostraNome(nome: "Walace")
mostraNome(nome: nil)
