programa {
  funcao inicio() {

   const inteiro TAMANHO = 8

   caracter tabuleirodexadrez[TAMANHO][TAMANHO]
   
   tabuleirodexadrez[0][0] = 't'
   tabuleirodexadrez[0][1] = 'c'
   tabuleirodexadrez[0][2] = 'b'
   tabuleirodexadrez[0][3] = 'r'
   tabuleirodexadrez[0][4] = 'r'
   tabuleirodexadrez[0][5] = 'b'
   tabuleirodexadrez[0][6] = 'c'
   tabuleirodexadrez[0][7] = 't'
   tabuleirodexadrez[1][0] = 'p'
   tabuleirodexadrez[1][1] = 'p'
   tabuleirodexadrez[1][2] = 'p'
   tabuleirodexadrez[1][3] = 'p'
   tabuleirodexadrez[1][4] = 'p'
   tabuleirodexadrez[1][5] = 'p'
   tabuleirodexadrez[1][6] = 'p'
   tabuleirodexadrez[1][7] = 'p'
   tabuleirodexadrez[2][0] = ' '
   tabuleirodexadrez[2][1] = ' '
   tabuleirodexadrez[2][2] = ' '
   tabuleirodexadrez[2][3] = ' '
   tabuleirodexadrez[2][4] = ' '
   tabuleirodexadrez[2][5] = ' '
   tabuleirodexadrez[2][6] = ' '
   tabuleirodexadrez[2][7] = ' '
   tabuleirodexadrez[3][0] = ' '
   tabuleirodexadrez[3][1] = ' '
   tabuleirodexadrez[3][2] = ' '
   tabuleirodexadrez[3][3] = ' '
   tabuleirodexadrez[3][4] = ' '
   tabuleirodexadrez[3][5] = ' '
   tabuleirodexadrez[3][6] = ' '
   tabuleirodexadrez[3][7] = ' '
   tabuleirodexadrez[4][0] = ' '
   tabuleirodexadrez[4][1] = ' '
   tabuleirodexadrez[4][2] = ' '
   tabuleirodexadrez[4][3] = ' '
   tabuleirodexadrez[4][4] = ' '
   tabuleirodexadrez[4][5] = ' '
   tabuleirodexadrez[4][6] = ' '
   tabuleirodexadrez[4][7] = ' '
   tabuleirodexadrez[5][0] = ' '
   tabuleirodexadrez[5][1] = ' '
   tabuleirodexadrez[5][2] = ' '
   tabuleirodexadrez[5][3] = ' '
   tabuleirodexadrez[5][4] = ' '
   tabuleirodexadrez[5][5] = ' '
   tabuleirodexadrez[5][6] = ' '
   tabuleirodexadrez[5][7] = ' '
   tabuleirodexadrez[6][0] = 'P'
   tabuleirodexadrez[6][1] = 'P'
   tabuleirodexadrez[6][2] = 'P'
   tabuleirodexadrez[6][3] = 'P'
   tabuleirodexadrez[6][4] = 'P'
   tabuleirodexadrez[6][5] = 'P'
   tabuleirodexadrez[6][6] = 'P'
   tabuleirodexadrez[6][7] = 'P'
   tabuleirodexadrez[7][0] = 'T'
   tabuleirodexadrez[7][1] = 'C'
   tabuleirodexadrez[7][2] = 'B'
   tabuleirodexadrez[7][3] = 'R'
   tabuleirodexadrez[7][4] = 'R'
   tabuleirodexadrez[7][5] = 'B'
   tabuleirodexadrez[7][6] = 'C'
   tabuleirodexadrez[7][7] = 'T'

   para (inteiro linha = 0; linha < TAMANHO; linha++)
   {
    para (inteiro coluna = 0; coluna < TAMANHO; coluna++)
    {
      escreva("[", tabuleirodexadrez[linha][coluna], "]")
    }
    escreva ("\n")
   }



   


  }
}
