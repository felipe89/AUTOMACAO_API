describe 'fazer uma requisição' do 
    it 'get' do     
        #se a gente não usar o modulo se chamario o httparty com o get assim:
        # @primeira_opcao = HTTParty.get('https://api-de-tarefas.herokuapp.com/contacts')
        # puts @primeira_opcao

        @melhor_opcao = Contato.get('/contacts/2300')
        puts @melhor_opcao
    end
end