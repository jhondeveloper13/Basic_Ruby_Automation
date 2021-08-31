#language: pt

Funcionalidade: Fechar carrinho
    Para que eu possa ter certeza de que vou receber e pagar tudo certinho
    Sendo um usuario que adicionou intens 
    Posso fechar o meu carrinho

    @total
    Cenario: Valor total e frete

        Dado que eu adicioneu os seguintes itens no carrinho:
            | quantidade | nome | descricao | subtotal |
            | 1 | Suco Detox | Suco de couve, cenoura, salcinha e maça. | R$ 14,90 |
            | 2 | Hamburger de Quinoa | Cheio de fibras e muito saboroso | R$ 21,00 |
        Quando eu fecho  o meu carrinho 
        Então o valor do frete deve ser igual a "R$ 35,90"
        E o valor do frete deve ser igual a "R$ 8,00"
        E o valor total do carrinho deve ser igual a "R$ 43,90"
