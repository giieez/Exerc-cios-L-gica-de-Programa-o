programa {

  inclua biblioteca Calendario --> calendario
  inclua biblioteca Texto --> texto 
  inclua biblioteca Util --> util 
  inclua biblioteca Tipos --> tipos


  funcao real novoPedido(real pedido[][]){
    para(inteiro i=0; i<10;i++){
      para(inteiro j=0; j<7;j++){
        pedido[i][j] = 0
      }
    }
    retorne pedido
  }

  funcao cadeia horaDaEntrega(inteiro tempoPreparo) 
  {

    inteiro horaAtual = calendario.hora_atual()
    inteiro minutoAtual = calendario.minuto_atual()
    inteiro horaEntrega = horaAtual
    inteiro minutoEntrega = minutoAtual
    cadeia horarios[2]

    minutoEntrega += tempoPreparo

    horaEntrega += (minutoEntrega / 60)
    minutoEntrega = (minutoEntrega % 60)
    
    horarios[0] = formatarTempo(horaAtual, minutoAtual)
    horarios[1] = formatarTempo(horaEntrega, minutoEntrega)  

    retorne horarios
  }

  funcao cadeia formatarTempo (inteiro horaInt, inteiro minutoInt)
  { 
    cadeia hora
    cadeia minuto
    cadeia horaMinuto
    
    se(horaInt < 10)
    {
      hora = "0" + tipos.inteiro_para_cadeia(horaInt, 10)
    } senao {
      hora = tipos.inteiro_para_cadeia(horaInt, 10)
    }

    se(minutoInt < 10)
    {
      minuto = "0" + tipos.inteiro_para_cadeia(minutoInt, 10)
    } senao {
      minuto = tipos.inteiro_para_cadeia(minutoInt, 10)
    }
    tipos.inteiro_para_cadeia(minutoInt, 10)
    
    horaMinuto = hora + ":" + minuto

    retorne horaMinuto
  }

  funcao inicio() {

    real pedido[10][7]
    pedido = novoPedido(pedido)

    cadeia tipos[] = {" ","Lanches","Acompanhamentos","Bebidas","Sobremesas","Combos"}
    cadeia menu[] = {" ","Cheeseburger","Hamb rguer de Frango","Hot Dog","X-Bacon","Veggie Burger","Double Cheeseburger","Hamb rguer de Peixe","Sandu che de Frango Grelhado","Wrap de Frango","Sandu che de Presunto e Queijo","Batata Frita","Onion Rings","Salada","Nuggets de Frango","Coca-Cola","Suco de Laranja"," gua Mineral","Ch  Gelado","Milkshake de Chocolate","Chopp","Caf  Expresso","Soda Italiana","Sorvete de Chocolate","Torta de Ma  ","Brownie com Sorvete","Pudim de Leite","Cheeseburger + Coca-Cola","Hamb rguer de Frango + Suco de Laranja + Sorvete de Chocolate","Hot-Dog + Milkshake de Chocolate + Batata Frita + Torta de Ma  ","X-Bacon + Ch  Gelado + Batata Frita + Pudim de Leite"}
    real matriz[][] = {{0,0,0,0},{1,1, 15.00,10},{1,2, 14.00,12},{1,3, 12.00,8},{1,4, 18.00,11},{1,5, 16.00,13},{1,6,20.00,15},{1,7, 17.00,14},{1,8, 14.00,10},{1,9, 13.00,9},{1,10, 11.00,6},{2,11, 8.00,5},{2,12, 9.00,7},{2,13, 6.00,4},{2,14,10.00,6},{3,15, 5.00,1},{3,16, 6.00,2},{3,17, 3.00,1},{3,18, 5.00,2},{3,19, 8.00,4},{3,20, 5.00,1},{3,21, 4.00,3},{3,22, 6.00,2},{4,23, 7.00,3},{4,24, 10.00,9},{4,25,12.00,6},{4,26,9.00,5},{5,27,17.00,10},{5,28,24.00,12},{5,29,35.00,9},{5,30,30.00,11}}
    real curva[] = {0.00,1.00,2.00,2.58,3.00,3.32,3.58,3.81,4.00,4.17,4.32,4.46,4.58,4.70,4.81,4.91,5.00,5.09,5.17,5.25,5.32,5.39,5.46,5.52,5.58,5.64,5.70,5.75,5.81,5.86,5.91,5.95,6.00,6.04,6.09,6.13,6.17,6.21,6.25,6.29,6.32,6.36,6.39,6.43,6.46,6.49,6.52,6.55,6.58,6.61,6.64}
    logico pedidoConcluido = falso
    inteiro item = 0
    real conta = 0.00
    real tempoEsteira[6] = {0,0,0,0,0,0}


    cadeia nome = ola()
    mostraMenu(tipos, menu, matriz)

    faca 
    {
      escreva("\n\nInforme o N MERO DO  TEM: ")
      leia(pedido[item][0])
      escreva("Qual a quantidade? ")
      leia(pedido[item][1])
      escreva("Deseja concluir o pedido (sim/n o)? ")
      leia(pedidoConcluido)
      item++
    } enquanto(pedidoConcluido == falso)

    para(inteiro k=0; k < 10;k++)
    {
      real aux1 = pedido[k][0]
      real custoUnit = matriz[aux1][2]
      pedido[k][2] = custoUnit
      real qtde = pedido[k][1]
      real custoTotal = custoUnit * qtde
      pedido[k][3] = custoTotal
      conta = conta + custoTotal
      pedido[k][4] = matriz[aux1][0] //guarda qual esteira produzira o pedido
      pedido[k][5] = matriz[aux1][3] //guarda o tempo de preparo unitario
      pedido[k][6] = pedido[k][5] * curva[qtde]//guarda o tempo de preparo total do item
    }
    
    //Melhore a exibi  o do CUPOM FISCAL
    para(inteiro i=0; i < util.numero_linhas(pedido);i++)
    {
      para(inteiro j=0; j < util.numero_colunas(pedido);j++)
      {
        escreva(pedido[i][j]," - ")
      }
      escreva("\n")
    }
    escreva("\n\n Sua conta ficou R$",conta, "\n\n")

    //Dica, letra E) calcular ocupa  o de cada esteira de todos os itens do pedido, quais estao nessa esteira? qual o tempo de preparo de cada um? quantas unidades foram pedidas? qual o tempo total desses itens? e qual o tempo total dessa esteira?
    para(inteiro t = 1; t < util.numero_elementos(tipos); t++)
    {
      real aux2 = tipos.inteiro_para_real(t)
      para(inteiro p = 0; p < util.numero_linhas(pedido); p++)
      {
        se(pedido[p][4] == aux2)
        {
          tempoEsteira[t] += pedido[p][6]
        }
      }
    }

    inteiro maiorTempo = tempoEsteira[0]
    para(inteiro esteira = 1; esteira < util.numero_elementos(tempoEsteira); esteira++)
    {
      se(tempoEsteira[esteira] > maiorTempo)
      {
        maiorTempo = tempoEsteira[esteira]
      }
    }

    cadeia horarios[2]
    horarios = horaDaEntrega(maiorTempo) 

    escreva("Seu pedido foi registrado  s ",horarios[0]," e ficar  pronto  s ",horarios[1])

  }
  
  funcao cadeia ola()
  { 
    cadeia nome
    escreva("Seja bem vindo(a) a Lanchonete Beca's Burger \n")
    escreva("Qual o seu nome? \n")
    leia(nome)
    escreva("Ol , ",nome,". Aqui est  o nosso card pio: \n\n")
    retorne nome
  }

  funcao letreiro(cadeia tipo)
  {
    escreva(texto.preencher_a_direita("*", 82 , "*"),"\n",texto.caixa_alta(tipo),"\n",texto.preencher_a_direita("*", 82 , "*"),"\n")
  }

  funcao itenDoMenu(inteiro y, cadeia menu[], real matriz[][])
  {
    inteiro tamanhoColunaNome = 75
    cadeia linha = tipos.inteiro_para_cadeia(y, 10) + " - " + menu[y] 
    linha = texto.preencher_a_direita(".", tamanhoColunaNome, linha)
    linha += " R$ " + tipos.real_para_cadeia(matriz[y][2]) + "\n"
    escreva(linha)
  }

  funcao mostraMenu(cadeia tipos[], cadeia menu[], real matriz[][])
  {
    para(inteiro l = 1; l < util.numero_elementos(tipos); l++)
    {
      letreiro(tipos[l])
      para(inteiro z = 0; z < util.numero_linhas(matriz); z++)
      {
        se(matriz[z][0] == tipos.inteiro_para_real(l))
        {
          itenDoMenu(matriz[z][1],menu,matriz)
        }
      }
    }
    escreva(texto.preencher_a_direita("*", 82 , "*"))
  }
}
