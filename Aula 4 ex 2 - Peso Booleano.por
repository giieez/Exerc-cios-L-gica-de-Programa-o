programa {
  funcao inicio() {
   cadeia nome
   logico boaSaude
   inteiro idade
   inteiro peso
   logico descansada
   logico alimentada
   logico resfriada
   logico gravida
   logico doar

   const inteiro IDADEMINIMA = 16
   const inteiro IDADEMAXIMA = 70
   const inteiro PESOMINIMO = 50

   escreva("Ol�, qual o seu nome? \n")
   leia(nome)
   escreva("Seja bem vinda, " ,nome, "\n")
   escreva("Vou te fazer algumas perguntas, responda com sim ou n�o. \n")
   escreva("Qual a sua idade (em anos)? ")
   leia(idade)
   escreva("Quantos quilos voc� pesa? ")
   leia(peso)
   escreva("Voc� est� em boas condi��es de sa�de? ")
   leia(boaSaude)
   escreva("Voc� est� descansada? ")
   leia(descansada)
   escreva("Voc� est� bem alimentada? ")
   leia(alimentada)
   escreva("Voc� est� resfriada? ")
   leia(resfriada)
   escreva("voc� est� gravida? ")
   leia(gravida)

   se(idade >= IDADEMINIMA e idade < IDADEMAXIMA e peso >= PESOMINIMO e boaSaude e descansada e alimentada e  nao resfriada e  nao gravida)
   {
    doar = verdadeiro
  } senao {
    doar = falso
  }

  se(doar){
    escreva("Parab�ns, ", nome, ". Sua doa��o ajudar� a salvar at� 4 vidas.")
} senao {
  escreva("Que pena, ",nome,". Infelizmente n�o ser� poss�vel doar sangue hoje. ")
}

   



    
  }
}
