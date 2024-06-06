programa {
  funcao inicio() {


    cadeia nome
    caracter local
    logico possoSegurar
    logico estouNoBanho
    logico temPessoas
    logico estouBebada
    logico pediramAmostraUrina
    logico temTransito
    logico jaLaveiOsPes
    logico meImporto
    logico estouConsciente
    logico laveiOsPes
    cadeia resposta[] = {"Onde você quiser", "No acostamento", "No banho", " Vá atrás da moita", "No banheiro", "Nas calças", "No copo"}
    
   escreva("Qual o seu nome?", "\n") 
   leia(nome)
   escreva("Olá,  ", nome,  " Já sei, você precisa de ajuda para fazer xixi. \n Onde você está? \n")
   escreva("1 - No carro \n 2 - Em casa \n 3 - Na rua \n 4 - Numa festa \n 5 - Qualquer outro lugar")
   leia(local)

   se(local == "1") 
   {
     escreva("Você consegue segurar?  \n")
     leia(possoSegurar)
     se(possoSegurar)
     {
      escreva(resposta[4])
     } senao {
      escreva("Tem trânsito? \n")
      leia(temTransito)
      se(temTransito)
      {
      escreva(resposta[4])
      } senao {
        escreva[resposta[1]]
      }
     }

   } senao se(local == 2)
   {
    escreva("Você está no banho:  \n")
    leia(estouNoBanho)
    se(estouNoBanho)
    {
      escreva("Você já lavou os pés? \n")
      leia(laveiOsPes)
      se(laveiOsPes)
      {
        escreva(resposta[2])
      } senao {
      escreva[resposta[4]]
      } 
    }
   } senao se(local == 3) 
   escreva(" Você consegue segurar?  \n")
   leia(possoSegurar)
   se(possoSegurar)
   {
    escreva(resposta[4])
   } senao {
    escreva[resposta[3]]
   } 
   } 
  }
}
