programa {
  funcao inicio() {

   inteiro casa = 1
   inteiro grao = 1
   inteiro acumulado = grao

   escreva(casa, " ",grao, "\n")

   para(inteiro i = casa+1; i < 65; i++){
    grao = grao * 2
    escreva(i, "  ", grao, "\n")
    acumulado += grao
   }

   escreva("O valor acumulado é: ", acumulado, "\n")
    
  }
}
