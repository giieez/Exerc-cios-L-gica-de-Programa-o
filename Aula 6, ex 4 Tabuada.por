programa
{
    funcao inicio()
    {
        inteiro numero, i

        // Solicita ao usuário para inserir um número entre 1 e 10
        escreva("Digite um número entre 1 e 10: ")
        leia(numero)

        // Verifica se o número está no intervalo permitido
        se (numero < 1 e numero > 10)
        {
            escreva("Número fora do intervalo permitido.\n")
            retorne
        }

        // Exibe a tabuada do número
        para (i = 1; i <= 10; i++)
        {
            escreva(numero, " x ", i, " = ", numero * i, "\n")
        }
    }
}