programa
{
    inclua biblioteca Util --> u

    funcao inicio()
    {
        inteiro numeroSecreto, palpite, tentativas

        // Sorteia um número entre 1 e 99
        numeroSecreto = u.sorteia(1, 99)
        tentativas = 0

        // Loop principal do jogo
        enquanto (verdadeiro)
        {
            escreva("Digite um número (entre 1 e 99): ")
            leia(palpite)
            tentativas = tentativas + 1

            se (palpite < numeroSecreto)
            {
                escreva("O número escolhido está abaixo do número da sorte.\n")
            }
            senao se (palpite > numeroSecreto)
            {
                escreva("O número escolhido está acima do número da sorte.\n")
            }
            senao
            {
                escreva("Parabéns! Você acertou o número da sorte em ", tentativas, " tentativas.\n")
                pare
            }
        }
    }
}
