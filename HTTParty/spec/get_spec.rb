
describe  'fazer uma requisição' do 

    it 'get' do
       
        @melhor_opcao = Contato.get('/contacts/7')
        puts @melhor_opcao

    end
end