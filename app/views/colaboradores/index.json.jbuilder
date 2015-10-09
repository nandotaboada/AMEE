json.array!(@colaboradores) do |colaborador|
  json.extract! colaborador, :id, :nome, :matricula, :contrato, :salario
  json.url colaborador_url(colaborador, format: :json)
end
