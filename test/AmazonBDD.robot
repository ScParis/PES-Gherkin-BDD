***Settings***
Documentation       Caso de teste criado no modelo GHERKIN
...
...                 **Funcionalidade (Storytelling):**
...                     Compra de item sem que o usuário esteja logado no site da Amazon.com.
...
...                     - SENDO usuário do site da Amazon.com
...                     - QUERO poder realizar a pesquisa de um produto
...                     - PARA que possa realizar a compra de um exemplar
...

Resource            ${EXECDIR}/resources/base.robot

Suite Setup             Start Browser Session
Test Teardown           Take Screenshot                 fullPage=true   

***Test Cases***
Cenário #1: Compra de item sem que o usuário esteja logado no sistema

    DADO que Coviderson acessa o site da Amazon
    E a Tab contém o texto: "Amazon.com.br | Compre livros, Kindle, Echo, Fire Tv e mais."
    QUANDO Coviderson realizar a busca pelo item "Engenharia de Software" no campo de pesquisa
    ENTÃO o item "Engenharia de Software" deverá aparecer na lista de resultados
    E ao escolher o item "Engenharia de Software", ao clicar para comprar
    MAS sem estar logado, o sistema deve redirecionar para a página de login




