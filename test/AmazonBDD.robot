***Settings***
Documentation       Caso de teste criado no modelo BDD

# Resource            resources/base.robot
Resource          ${EXECDIR}/resources/base.robot

Suite Setup     Start Browser Session
Test Teardown   Thinking And Take Screenshot        5

***Test Cases***
Cenário #1: Tentativa de compra sem login

    DADO QUE Coviderson acessa a página inicial do site da Amazon
    E ele confirma que o nome da Tab contém o texto: "Amazon.com.br | Compre livros, Kindle, Echo, Fire Tv e mais."
    QUANDO Coviderson realizar a busca, digitando o nome de um item "Qualidade E Teste Em Software" no campo de pesquisa
    E Clicar em Pesquisar
    ENTÃO deverá apresentar o resultado contendo o item "Qualidade E Teste Em Software" que Coviderson está pesquisando
    E encontra o item "Qualidade E Teste Em Software" na lista de resultados
    E Coviderson clica para acessar o item "Qualidade E Teste Em Software" escolhido
    E clicar em comprar agora
    MAS se Coviderson não estiver logado, ele deverá ser redirecionado para a página de login