module Contato

    include HTTParty
    base_uri 'https://api-de-tarefas.herokuapp.com'
    
    #opçoes do meu service
    format :json
    headers Accept: 'application/vnd.taskmanager.v2'
                    'Content_Type': 'application/json'    
'
end