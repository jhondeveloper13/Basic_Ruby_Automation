#language: pt

@bread_bakery
Funcionalidade: Remover do carrinho
    Para que eu possa manter meu carrinho apenas com itens desejados 
    Sendo um cliente que desistiu de um ou mais produtos 
    Posso remover itens do meu carrinho 

  
    Esquema do Cenario: Remover item 

        Dado que eu tenho os seguintes items no carrinho:
            | nome                   | preco    | quantidade |
            | Cup Cake               | R$ 8,70  |    1       |
            | Donut                  | R$ 2,50  |    1       |
            | Pão Artesanal Italiano | R$ 15,90 |    1       |
        Quando eu removo somente o <item>
        Entao o valor total deve ser de <total>

        Exemplos: 
        | item | total     |
        | 0    | "R$ 18,40"|
        | 1    | "R$ 24,60"|
        | 2    | "R$ 11,20"|

    @temp
    Cenario: Remover todos os items

        Dado que eu tenho os seguintes items no carrinho:
            | nome                   | preco    | quantidade |
            | Cup Cake               | R$ 8,70  |    1       |
            | Donut                  | R$ 2,50  |    2       |
            | Pão Artesanal Italiano | R$ 15,90 |    1       |
        Quando eu removo todos os items 
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio"

