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
    cadeia resposta[] = {"Onde voc� quiser", "No acostamento", "No banho", " V� atr�s da moita", "No banheiro", "Nas cal�as", "No copo"}
    
   escreva("Qual o seu nome?", "\n") 
   leia(nome)
   escreva("Ol�,  ", nome,  " J� sei, voc� precisa de ajuda para fazer xixi. \n Onde voc� est�? \n")
   escreva("1 - No carro \n 2 - Em casa \n 3 - Na rua \n 4 - Numa festa \n 5 - Qualquer outro lugar")
   leia(local)

   se(local == "1") 
   {
     escreva("Voc� consegue segurar?  \n")
     leia(possoSegurar)
     se(possoSegurar)
     {
      escreva(resposta[4])
     } senao {
      escreva("Tem tr�nsito? \n")
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
    escreva("Voc� est� no banho:  \n")
    leia(estouNoBanho)
    se(estouNoBanho)
    {
      escreva("Voc� j� lavou os p�s? \n")
      leia(laveiOsPes)
      se(laveiOsPes)
      {
        escreva(resposta[2])
      } senao {
      escreva[resposta[4]]
      } 
    }
   } senao se(local == 3) 
   escreva(" Voc� consegue segurar?  \n")
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
