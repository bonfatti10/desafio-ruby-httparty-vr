---

# Desafio Ruby HTTParty VR 🚀

Este projeto foi desenvolvido para validar um endpoint utilizando **Ruby**, **Cucumber** e **HTTParty** em um ambiente Docker. Além disso, implementa uma função personalizada para manipulação de strings com testes automatizados.

---

## 📋 Descrição do Projeto

### **Parte 1: Teste do Endpoint**
O projeto verifica o endpoint público da VR, validando que o JSON retornado contém a chave `typeOfEstablishment`. Além disso, imprime aleatoriamente um dos tipos de estabelecimento disponíveis.

**Endpoint:**
```
https://portal.vr.com.br/api-web/comum/enumerations/VRPAT
```

### **Parte 2: Função de Manipulação de String**
Implementa uma função que recebe:
1. Uma string.
2. Um array de símbolos.

A função remove todo o texto após qualquer um dos símbolos na string de entrada. Testes foram criados para validar o comportamento esperado em diferentes cenários.

---

## 🛠️ Tecnologias Utilizadas

- **Ruby 3.2**
- **Cucumber**: Framework de testes behavior-driven (BDD).
- **HTTParty**: Biblioteca HTTP para consumir APIs.
- **Docker**: Contêinerização para isolar o ambiente.

---

## 🚀 Configuração do Ambiente

### **Pré-requisitos**
- **Docker** instalado ([guia de instalação](https://docs.docker.com/get-docker/)).

### **Passos para Configuração**
1. Clone o repositório:
   ```bash
   git clone <URL_DO_REPOSITORIO>
   cd desafio-ruby-httparty-vr
   ```

2. Construa a imagem Docker:
   ```bash
   docker build -t ruby-cucumber-app .
   ```

3. Execute os testes:
   ```bash
   docker run --rm ruby-cucumber-app
   ```

---

## 📂 Estrutura do Projeto

```
desafio-ruby-httparty-vr/
│
├── Dockerfile                 # Configuração do ambiente Docker
├── Gemfile                    # Lista de dependências Ruby
├── Gemfile.lock               # Versões específicas das dependências
├── features/                  # Cenários e passos do Cucumber
│   ├── products.feature       # Cenários de teste para o endpoint
│   ├── string_manipulation.feature # Cenários para a função de manipulação de strings
│   ├── step_definitions/      # Implementações dos passos
│   │   ├── product_steps.rb   # Validação do endpoint
│   │   └── string_steps.rb    # Implementação da função de manipulação de strings
│   └── support/
│       └── env.rb             # Configuração inicial do Cucumber
```

---

## 🧪 Cenários de Teste

### **Teste do Endpoint**
- Valida se a chave `typeOfEstablishment` está presente.
- Imprime um estabelecimento aleatório no console.

### **Cenários da Função de Manipulação de String**
1. Remover texto após vírgula:
   - Entrada: `"bananas, tomates # e ventila"`
   - Símbolos: `[",", "#"]`
   - Resultado esperado: `"bananas"`

2. Remover texto após hash:
   - Entrada: `"texto # exemplo"`
   - Símbolos: `["#"]`
   - Resultado esperado: `"texto"`

3. Remover texto após ponto e vírgula:
   - Entrada: `"carros; aviões; navios"`
   - Símbolos: `[";"]`
   - Resultado esperado: `"carros"`

---

## 📜 Licença

Este projeto é open-source e pode ser usado livremente. Contribuições são bem-vindas!

---

## 🙌 Contribuições

Sinta-se à vontade para abrir issues ou enviar pull requests. Feedbacks são sempre bem-vindos!

---

## 📞 Contato

**Carlos Bonfatti**  
QA Manager | Especialista em Automação de Testes  
📧 [carlosbonfatti1@gmail.com](carlosbonfatti1@gmail.com)  
