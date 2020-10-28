describe 'usando' do 
    it 'token' do 
        #Geração de um email aleatório
        @email = Faker::Internet.email

        @body = {
            user: {
                email: @email,
                password: '123456',
                password_confirmation: '123456'

            }
        }.to_json

        @header = {
            Accept: 'application/vnd.taskmanager.v2',
            'Content-Type': 'application/json'
        }

        @criar = Criar.post('/users', body: @body, headers: @header)
        puts @criar.body
        puts @criar.parsed_response['data']['attributes']['auth-token']


        @body_one = {
            session: {
                email: @email,
                password: '123456'
            }
        }.to_json

        @header_one = {
            Accept: 'application/vnd.taskmanager.v2',
            'Content-Type': 'application/json',
            #Para geração de token aleatório efetuamos da forma abaixo
            Authorization: "#{@criar.parsed_response['data']['attributes']['auth-token']}"
            #Para um token unico podemos efetuar diretamento informando apenas o token que não muda
                #Authorization: "SIHIAUHSUIAHIUSHA"
        }

        @login = Criar.post('/sessions', body: @body_one, headers: @header_one)
        puts @login.body
    end        
end
