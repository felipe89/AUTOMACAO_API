describe 'fazer requisição' do 
    context 'para alterar dados com' do
        it 'put' do 
            @body_put ={
                "id": 2300,
                "name": "gilmar felipe",
                "last_name": "trindade",
                "email": "a@d.com.br",
                "age": "20",
                "phone": "192929292",
                "address": "São Sebastião",
                "city": "São Luiz"
            }.to_json
           @requisicao_put = Contato.put('/contacts/2300', body: @body_put)
           puts @requisicao_put
        end

        it 'patch' do 
            @body_patch = {
                "id": 8,
                "name": "Felipe luz",
                "last_name": "franca",
                "email": "a@c.com.br",
            }.to_json
            @requisicao_patch = Contato.patch('/contacts/8', body: @body_patch)
            puts @requisicao_patch

        end

        end

    end
