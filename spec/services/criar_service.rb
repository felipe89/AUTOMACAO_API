module Criar
    include HTTParty
    #URL base de contato
        base_uri 'https://api-de-tarefas.herokuapp.com/'
    #Opções do meu service
        format :json    
end