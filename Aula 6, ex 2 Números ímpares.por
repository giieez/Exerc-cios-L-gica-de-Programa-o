programa {
  funcao inicio() {
    
    inteiro inicio
    inteiro fim
    inteiro i

    escreva("Informe o valor de in�cio do intervalo: ")
        leia(inicio)
        escreva("Informe o valor de fim do intervalo: ")
        leia(fim)

        se (inicio > fim)
        {
            inteiro temp = inicio
            inicio = fim
            fim = temp
        }

         para (i = inicio + 1; i < fim; i++)
        {
            // Verifica se o n�mero � �mpar
            se (i % 2 != 0)
            {
                escreva(i, " ")
            }}

  }
}
