programa {
  funcao inicio() {
    

    inteiro primeirolado
    inteiro segundolado
    inteiro terceirolado
    
    escreva("Digite o valor para o lado de um tri�ngulo: \n" )
    leia(primeirolado)
    escreva("Digite o valor para o segundo lado: \n")
    leia(segundolado)
    escreva("Digite um valor para o terceiro lado: \n")
    leia(terceirolado)

   se((primeirolado + segundolado > terceirolado) e (primeirolado + terceirolado > segundolado) e (segundolado + terceirolado > primeirolado)){
    se(primeirolado == segundolado e segundolado == terceirolado){
      escreva("O tri�ngulo � equil�tereo \n")
    }senao (primeirolado == segundolado ou segundolado == terceirolado ou primeirolado == terceirolado) 
      escreva("O tri�ngulo � Is�sceles \n") 
   }senao {
    escreva("O tri�ngulo � Escaleno")
   }



  

  }
}
