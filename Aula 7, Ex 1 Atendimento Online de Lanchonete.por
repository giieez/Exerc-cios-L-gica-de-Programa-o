/*
Crie um atendimento online para uma lanchonete;
O cardápio tem Lanches, Acompanhamentos, Bebidas, Sobremesas e Combos de produtos;
O primeiro passo é cumprimentar o cliente, depois exibir o menu e ir anotando os pedidos até ser concluído.
*/
programa {
  funcao inicio() {
 
    real pedido[10][4]
    para(inteiro p=0;p<10;p++){
      para(inteiro r=0;r<4;r++){
        pedido[p][r] = 0
      }
    }
    cadeia nome
    cadeia tipos[] = {" ","Lanches","Acompanhamentos","Bebidas","Sobremesas", "Combos"}
    cadeia menu[] = {" ","1- Cheeseburger","2- Hambúrguer de Frango","3- Hot Dog","4- X-Bacon","5- Veggie Burger","6- Double Cheeseburger","7- Hambúrguer de Peixe","8- Sanduíche de Frango Grelhado","9- Wrap de Frango","10- Sanduíche de Presunto e Queijo","11- Batata Frita","12- Onion Rings","13- Salada","14- Nuggets de Frango","15- Coca-Cola","16- Suco de Laranja","17- Água Mineral","18- Chá Gelado","19- Milkshake de Chocolate","20- Chopp","21- Café Expresso","22- Soda Italiana","23- Sorvete de Chocolate","24- Torta de Maçã","25- Brownie com Sorvete","26- Pudim de Leite","27- Cheeseburger + Coca-Cola","28- Hambúrguer de Frango + Suco de Laranja + Sorvete de Chocolate","29- Hot-Dog + Milkshake de Chocolate + Batata Frita + Torta de Maçã","30- X-Bacon + Chá Gelado + Batata Frita + Pudim de Leite"}
    real matriz[][] = {{0,0,0,0},{1,1, 15.00,10},{1,2, 14.50,12},{1,3, 12.00,8},{1,4, 18.00,11},{1,5, 16.00,13},{1,6,20.50,15},{1,7, 17.00,14},{1,8, 14.50,10},{1,9, 13.00,9},{1,10, 11.00,6},{2,11, 8.00,5},{2,12, 9.00,7},{2,13, 6.00,4},{2,14, 10.00,6},{3,15, 5.00,1},{3,16, 6.00,2},{3,17, 3.50,1},{3,18, 5.50,2},{3,19, 8.00,4},{3,20, 5.00,1},{3,21, 4.00,3},{3,22, 6.50,2},{4,23, 7.00,3},{4,24, 10.00,9},{4,25,12.00,6},{4,26,9.00,5},{5,27,17.00,10},{5,28,24.50,12},{5,29,35.00,9},{5,30,30.00,11}}
    logico pedidoConcluido = falso
    inteiro item = 0
    inteiro i
    real conta = 0
    
 
    
escreva("Seja bem vindo(a), é um prazer recebê-los(as) no Sonho de Comer. Meu nome é Iara e eu irei te atender. \n")
escreva("Qual seu nome? \n")
leia(nome)
escreva("Olá ",nome, ",", " Aqui está nosso cardápio: \n")
escreva("ACOMPANHAMENTOS: \n")
para (i=11; i < 15; i++){
  escreva("\n",menu[i], " \n")
}
escreva("******************** ")
escreva("\n LANCHES: \n")
para(i=1; i < 11; i++){
  escreva("\n",menu[i], " \n")
}
escreva("******************** ")
escreva("\n BEBIDAS: \n")
para(i=15; i < 23; i++){
  escreva("\n ",menu[i], "\n")
}
escreva("******************** ")
escreva("\n SOBREMESAS: \n")
para(i=23; i< 27; i++){
  escreva("\n ",menu[i], "\n")
}
escreva("******************** ")
escreva("\n Esses são os nossos Combos Queridinhos: \n")
para(i=28; i<31; i++){
  escreva("\n",menu[i], "\n")
}
faca{
  escreva(" Informe o Número do item:  ")
  leia(pedido[item][0])
  escreva(" \n Qual a quantidade? ")
  leia(pedido[item][1])
  escreva("\n Deseja concluir o pedido (sim ou não)? ")
  leia(pedidoConcluido)
  item++
} enquanto(pedidoConcluido == falso)


para(inteiro k=0; k <10 ; k++){
  real aux1 = pedido[k][0]
    real custoUnit = matriz[aux1][2]
    real qtde = pedido [k][1]
    real custoTotal = custoUnit * qtde
    pedido[k][2] = custoTotal
    conta = conta + custoTotal
}


para(inteiro i=0; i <10; i++){
  para(inteiro j=0; j <4; j++){
    escreva(pedido[i][j], " - ")
  }
  escreva("\n")
}
 
escreva("\n\n Sua Conta deu R$", conta)  

}

 

  }
}
