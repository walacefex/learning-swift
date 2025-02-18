//Em um aplicativo da vida real, às vezes é necessário verificar a idade do usuário para permitir um serviço. Vamos simular essa situação e praticar nosso código Swift:
//Crie uma constante que armazene a sua idade;
//Escreva uma condicional que verifique se a sua idade está entre 0 e 13;
//Caso esteja, mostre “Criança” na tela. Caso o valor esteja entre 13 e 18, mostre “Adolescente”;
//Por fim, caso seja maior que 18, mostre “Adulto”.

let idade = 18
switch idade {
    case 0..<13: print("Criança")
    case 13..<18: print("Adolescente")
    default: print("Adulto")
}
