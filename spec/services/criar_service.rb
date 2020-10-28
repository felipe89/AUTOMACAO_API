module Criar
    include HTTParty
    #URL base de contato
        base_uri CONFIG['url_padrao']
    #Opções do meu service
        format :json    
end