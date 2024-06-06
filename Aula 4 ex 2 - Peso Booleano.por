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

   escreva("Olá, qual o seu nome? \n")
   leia(nome)
   escreva("Seja bem vinda, " ,nome, "\n")
   escreva("Vou te fazer algumas perguntas, responda com sim ou não. \n")
   escreva("Qual a sua idade (em anos)? ")
   leia(idade)
   escreva("Quantos quilos você pesa? ")
   leia(peso)
   escreva("Você está em boas condições de saúde? ")
   leia(boaSaude)
   escreva("Você está descansada? ")
   leia(descansada)
   escreva("Você está bem alimentada? ")
   leia(alimentada)
   escreva("Você está resfriada? ")
   leia(resfriada)
   escreva("você está gravida? ")
   leia(gravida)

   se(idade >= IDADEMINIMA e idade < IDADEMAXIMA e peso >= PESOMINIMO e boaSaude e descansada e alimentada e  nao resfriada e  nao gravida)
   {
    doar = verdadeiro
  } senao {
    doar = falso
  }

  se(doar){
    escreva("Parabéns, ", nome, ". Sua doação ajudará a salvar até 4 vidas.")
} senao {
  escreva("Que pena, ",nome,". Infelizmente não será possível doar sangue hoje. ")
}

   



    
  }
}
