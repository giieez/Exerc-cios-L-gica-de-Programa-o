programa
{
    funcao inicio()
    {
        inteiro numero
        inteiro i 
        inteiro j

        // Solicita ao usu�rio para inserir um n�mero
        escreva("Digite um n�mero inteiro: ")
        leia(numero)

        // Verifica se o n�mero � maior que zero
        se (numero < 1)
        {
            escreva("N�mero inv�lido. Digite um n�mero maior ou igual a 1.\n")
            retorne
        }

        // Loop para cada n�mero de 1 at� o n�mero inserido
        para (i = 1; i <= numero; i++)
        {
            escreva("Tabuada do ", i, ":\n")
            // Loop para calcular e exibir a tabuada de i
            para (j = 1; j <= 10; j++)
            {
                escreva(i, " x ", j, " = ", i * j, "\n")
            }
            escreva("\n") // Adiciona uma linha em branco ap�s cada tabuada
        }
    }
}