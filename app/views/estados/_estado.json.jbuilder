json.extract! estado, :id, :EST_NOME, :EST_SIGLA, :created_at, :updated_at
json.url estado_url(estado, format: :json)