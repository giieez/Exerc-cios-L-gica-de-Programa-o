programa {
  funcao inicio() {
    
    real peso 
    real altura
    real imc
  
   const real rMinimo = 20
   const real rMaximo = 25

   escreva("Olá, quantos kg você pesa? Escreva em números ")
   leia(peso)
   escreva("Qual a sua altura? Em metros ")
   leia(altura)
  

   imc = peso / (altura * altura)
   

   se(imc< rMinimo )
   {
    escreva("Você está abaixo do peso ")
   }senao se(imc <= rMaximo)
   {
escreva("Você está no seu peso ideal ")
   }senao se(imc > rMaximo)
   {
    escreva("Você está acima do peso ")
   }
  }
  }
