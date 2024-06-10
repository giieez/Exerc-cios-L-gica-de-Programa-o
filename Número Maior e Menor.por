programa {
  funcao inicio() 
  {
    inteiro numero1, numero2, numero3
    inteiro menor, meio, maior

    escreva("Digite o primeiro número:\n")
    leia(numero1)

    escreva("Digite o segundo número:\n")
    leia(numero2)

    escreva("Digite o terceiro número:\n")
    leia(numero3)

    se(numero1 < numero2 e numero1 < numero3)
    {
      menor  = numero1
      se(numero2 < numero3)
      {
        meio = numero2
        maior = numero3
      }senao se(numero2 > numero3)
      {
        meio = numero3
        maior = numero2
      }      
    }senao se(numero2 < numero1 e numero2 < numero3)
    {
      menor = numero2
      se(numero1 < numero3)
      {
        meio = numero1
        maior = numero3
      }senao se(numero3 < numero1)
      {
        meio = numero3
        maior = numero1
      }
    }senao se(numero3 < numero1 e numero3 < numero2 )
    {
      menor = numero3
      se(numero1 < numero2)
      {
        meio = numero1
        maior = numero2
      }senao se(numero2 < numero1)
      {
        meio = numero2
        maior= numero1
      }
    }
    escreva("\n ", menor," ", meio," ",maior)
    escreva("\n ", numero1," ", numero2," ",numero3)
  }
}