#language: pt

@bread_bakery
Funcionalidade: Remover do carrinho
    Para que eu possa manter meu carrinho apenas com itens desejados 
    Sendo um cliente que desistiu de um ou mais produtos 
    Posso remover itens do meu carrinho 

    Contexto: Itens no carrinho 
        Dado que eu tenho os seguintes items no carrinho:
            | nome                   | preco    | quantidade |
            | Cup Cake               | R$ 8,70  |    1       |
            | Donut                  | R$ 2,50  |    1       |
            | Pão Artesanal Italiano | R$ 15,90 |    1       |

  
    Esquema do Cenario: Remover item 

        Quando eu removo somente o <item>
        Entao o valor total deve ser de <total>

        Exemplos: 
        | item | total     |
        | 0    | "R$ 18,40"|
        | 1    | "R$ 24,60"|
        | 2    | "R$ 11,20"|

    Cenario: Remover todos os items

        Quando eu removo todos os items 
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio"

    Cenario: Limpar Carrinho

        Quando eu limpo o meu carrinho 
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio"


