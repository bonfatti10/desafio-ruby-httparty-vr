Feature: Remoção de texto após símbolos

  Scenario: Cenário 1 - Remover texto após vírgula
    Given a string "bananas, tomates # e ventila"
    And um array de símbolos [",", "#"]
    Then o resultado deve ser "bananas"

  Scenario: Cenário 2 - Remover texto após hash
    Given a string "texto # exemplo"
    And um array de símbolos ["#"]
    Then o resultado deve ser "texto"

  Scenario: Cenário 3 - Remover texto após ponto e vírgula
    Given a string "carros; aviões; navios"
    And um array de símbolos [";"]
    Then o resultado deve ser "carros"
