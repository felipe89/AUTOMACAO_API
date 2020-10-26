describe 'fazer uma requisição' do 
    it 'post' do
        @body = {
                "name": "Felipe trindade",
                "last_name": "silva",
                "email": "a@c.com.br",
                "age": "30",
                "phone": "123456789",
                "address": "São Paulo",
                "city": "São Paulo"
            }.to_json
        
        #Forma simples do uso do httparty
        # @headers = {
        #     "Accept": 'application/vnd.tasksmanager.v2',
        #     'Content-Type': 'application/json'
        # }

        # @request = HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts', body: @body, headers: @headers )
        # puts @request

        @request = Contato.post('/contacts', body: @body)
            puts @request
    end
end
