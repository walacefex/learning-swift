/*Escreva uma função que receba um parâmetro do tipo Int e verifique se esse número é primo ou não. O retorno dessa função pode ser um booleano, representando true se for primo ou false se não for primo.*/
func primo(_ number: Int) -> Bool {
   let start = 2
   for i in start..<number {
       if number % i == 0 {
                 return false
             }
   }
   return true
}
primo(6) // false
primo(7) // true
