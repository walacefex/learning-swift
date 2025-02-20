/**
 Imagine que você foi ao restaurante com um quantidade “n” de amigos e gastaram ao total um valor x. Faça um programa que contenha uma função que calcule quanto cada pessoa deva pagar.
 A função deve receber dois parâmetros: o valor total da conta e o número total de pessoas que irão dividir a conta;
 Não se esqueça dos 10% do garçom! Faça o cálculo em cima do valor total;
 Retorne quanto cada pessoa deve pagar e exiba esse valor no console, fora da função.
 Exemplo: a conta total deu R$120,00 e foram 4 pessoas no total. Calculando 10% em cima de R$120,00, o valor final ficará R$132,00. Dividindo esse valor por 4, cada pessoa deve pagar um total de R$33,00.
 */

func divideConta(_ total: Double, _ numeroPessoas: Int) -> Double {
  let valorComTaxa = total * 1.1
  return valorComTaxa / Double(numeroPessoas) // É necessário transformar em Double pois não é possível fazer uma divisão Double com Int, precisa ser Double e Double ou Int e Int
}

let totalParaCadaPessoa = divideConta(120, 4)
print(totalParaCadaPessoa)
