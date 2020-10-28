module Contato
    include HTTParty
#URL base de contato
    base_uri CONFIG['url_padrao']
#Opções do meu service
    format :json
    headers Accept: 'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json'
end
