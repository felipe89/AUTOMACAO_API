describe 'fazer uma requisição' do 
    it 'get' do     
        @melhor_opcao = Contato.get('/contacts/2314')
    #Validar Status do retorno true = 200
        puts @melhor_opcao.code 
        expect(@melhor_opcao.code).to eq 200
    #valida a Requisicao solicitada trazendo todo o corpo da requisicao
        puts @melhor_opcao.body
    #Converter uma String para um Json e efetuando uma comparação
        puts @melhor_opcao.parsed_response['data']['attributes']['name']
        expect(@melhor_opcao.parsed_response['data']['attributes']['name']).to eq 'qamilla'
        expect(@melhor_opcao.parsed_response['data']['attributes']['last-name']).to eq 'qamilla2'
        expect(@melhor_opcao.parsed_response['data']['attributes']['email']).to eq 'qamilla@gmail.com'
        expect(@melhor_opcao.parsed_response['data']['attributes']['age']).to eq 30

    end
end