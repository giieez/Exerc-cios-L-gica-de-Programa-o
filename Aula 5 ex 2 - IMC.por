programa {
  funcao inicio() {
    
    real peso 
    real altura
    real imc
  
   const real rMinimo = 20
   const real rMaximo = 25

   escreva("Ol�, quantos kg voc� pesa? Escreva em n�meros ")
   leia(peso)
   escreva("Qual a sua altura? Em metros ")
   leia(altura)
  

   imc = peso / (altura * altura)
   

   se(imc< rMinimo )
   {
    escreva("Voc� est� abaixo do peso ")
   }senao se(imc <= rMaximo)
   {
escreva("Voc� est� no seu peso ideal ")
   }senao se(imc > rMaximo)
   {
    escreva("Voc� est� acima do peso ")
   }
  }
  }
