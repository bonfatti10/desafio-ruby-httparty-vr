require 'httparty'

BASE_URL = 'https://portal.vr.com.br/api-web/comum/enumerations/VRPAT'

Given("que eu acesso o endpoint de produtos e estabelecimentos") do
  @response = HTTParty.get(BASE_URL)
end

Then("eu valido que a resposta contém a chave {string}") do |key|
  expect(@response.parsed_response).to have_key(key)
end

Then("imprimo aleatoriamente um tipo de estabelecimento") do
  establishments = @response.parsed_response["typeOfEstablishment"]
  puts "Estabelecimento aleatório: #{establishments.sample}"
end
