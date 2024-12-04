def clean_string(input, symbols)
    regex = Regexp.union(symbols.map { |s| Regexp.escape(s) })
    input.split(regex).first.strip
  end
  
  Given("a string {string}") do |string|
    @string = string
  end
  
  Given("um array de símbolos {string}") do |symbols|
    @symbols = eval(symbols)
  end
  
  Then("o resultado deve ser {string}") do |expected_result|
    result = clean_string(@string, @symbols)
    expect(result).to eq(expected_result)
  end
  