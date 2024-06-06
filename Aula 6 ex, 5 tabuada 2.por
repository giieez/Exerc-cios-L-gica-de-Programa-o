programa
{
    funcao inicio()
    {
        inteiro numero
        inteiro i 
        inteiro j

        // Solicita ao usuário para inserir um número
        escreva("Digite um número inteiro: ")
        leia(numero)

        // Verifica se o número é maior que zero
        se (numero < 1)
        {
            escreva("Número inválido. Digite um número maior ou igual a 1.\n")
            retorne
        }

        // Loop para cada número de 1 até o número inserido
        para (i = 1; i <= numero; i++)
        {
            escreva("Tabuada do ", i, ":\n")
            // Loop para calcular e exibir a tabuada de i
            para (j = 1; j <= 10; j++)
            {
                escreva(i, " x ", j, " = ", i * j, "\n")
            }
            escreva("\n") // Adiciona uma linha em branco após cada tabuada
        }
    }
}