programa {
  funcao inicio() {
    
    real renda
    real valorComDesconto

    escreva("Digite o seu salário: \n")
    leia(renda)

    se(renda <= 0){
      escreva("Valor inválido")
    }senao se(renda <= 2000){
      escreva("Isento")
    }senao se(renda <= 3000){
      valorComDesconto = (renda - 2000)* 0.08
      escreva("8% ", valorComDesconto)
    }senao se(renda <= 4500){
      valorComDesconto = 1000 * 0.08 + (renda - 3000) * 0.18
      escreva("18% ", valorComDesconto)
    }senao se(renda > 4500){
      valorComDesconto = 1000 * 0.08 + 1500 * 0.18 + (renda - 4500) * 0.28
      escreva("28% ", valorComDesconto)
    }
  }
}
