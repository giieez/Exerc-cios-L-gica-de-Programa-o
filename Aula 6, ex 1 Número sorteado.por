programa
{
    inclua biblioteca Util --> u

    funcao inicio()
    {
        inteiro numeroSecreto, palpite, tentativas

        // Sorteia um n�mero entre 1 e 99
        numeroSecreto = u.sorteia(1, 99)
        tentativas = 0

        // Loop principal do jogo
        enquanto (verdadeiro)
        {
            escreva("Digite um n�mero (entre 1 e 99): ")
            leia(palpite)
            tentativas = tentativas + 1

            se (palpite < numeroSecreto)
            {
                escreva("O n�mero escolhido est� abaixo do n�mero da sorte.\n")
            }
            senao se (palpite > numeroSecreto)
            {
                escreva("O n�mero escolhido est� acima do n�mero da sorte.\n")
            }
            senao
            {
                escreva("Parab�ns! Voc� acertou o n�mero da sorte em ", tentativas, " tentativas.\n")
                pare
            }
        }
    }
}
