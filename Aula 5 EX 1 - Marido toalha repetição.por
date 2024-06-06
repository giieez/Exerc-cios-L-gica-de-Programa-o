programa {
  inclua biblioteca Util --> u
  funcao inicio() 
  {

    logico maridoSabe = falso
    inteiro aleatorio
    inteiro quantasVezes = 0


    enquanto(nao maridoSabe)
    {
      aleatorio = u.sorteia(1, 100)
      escreva("ESPOSA: Quantas vezes eu terei que te dizer para não deixar a toalha molhada em cima da cama?", aleatorio, "\n")
      quantasVezes = quantasVezes + 1
      se(aleatorio == 55)
      
      {
        maridoSabe = verdadeiro
      }
    }
    
    escreva("ESPOSO: Só precisou dizer  ", quantasVezes, " vezes meu amorzinho" )
    
  }
}
