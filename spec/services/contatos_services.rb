module Contato
    include HTTParty
#URL base de contato
    base_uri 'https://api-de-tarefas.herokuapp.com/'
#Opções do meu service
    format :json
    headers Accept: 'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json'
end
