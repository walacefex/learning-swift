//Crie uma constante que armazene uma pergunta “Qual o valor de 8 x 2?” no formato String. A seguir, crie uma constante que armazene a resposta correta e uma constante que armazene a resposta do usuário;
//Além disso, crie uma variável do tipo inteiro que armazena a pontuação do usuário. Caso a resposta do usuário for igual a resposta correta, acrescente em 1 o valor da pontuação. Caso não for igual, diminua em 1 a pontuação. No final, imprima a pontuação do usuário.
let pergunta = "Qual o valor de 8 x 2?"
let respostaCorreta = 16
let minhaResposta = 10
var pontos = 0

if minhaResposta == respostaCorreta {
    pontos += 1
} else {
    pontos -= 1
}

print(pontos)
