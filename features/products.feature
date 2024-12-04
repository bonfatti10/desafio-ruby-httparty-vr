Feature: Validar o endpoint de consulta de produtos e estabelecimentos

  Scenario: Verificar se a resposta possui a chave "typeOfEstablishment"
    Given que eu acesso o endpoint de produtos e estabelecimentos
    Then eu valido que a resposta contém a chave "typeOfEstablishment"
    And imprimo aleatoriamente um tipo de estabelecimento
