programa
{
    funcao inicio()
    {
        inteiro numero, i

        // Solicita ao usu�rio para inserir um n�mero entre 1 e 10
        escreva("Digite um n�mero entre 1 e 10: ")
        leia(numero)

        // Verifica se o n�mero est� no intervalo permitido
        se (numero < 1 e numero > 10)
        {
            escreva("N�mero fora do intervalo permitido.\n")
            retorne
        }

        // Exibe a tabuada do n�mero
        para (i = 1; i <= 10; i++)
        {
            escreva(numero, " x ", i, " = ", numero * i, "\n")
        }
    }
}