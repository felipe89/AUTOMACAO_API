describe 'fazer requisicao' do 
    it 'delete' do 
        @deletandoid = Contato.delete('/contacts/2300')
        puts @deletandoid
    end
end