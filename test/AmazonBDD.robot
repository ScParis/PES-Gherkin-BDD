***Settings***
Documentation       Caso de teste criado no modelo BDD
...                 Funcionalidade: Compra de item sem que o usuário esteja logado no sistema.
...                     Como consumidor na plataforma Amazon.com.
...                     Coviderson quer realizar a compra de um item, porém não está logado no sistema.
...                     Coviderson acessa a página de compra de um item.
...                     E clica para realizar a compra.
...                     Então o sistema deve redirecionar para a página de login.

# Resource            resources/base.robot
Resource          ${EXECDIR}/resources/base.robot

Suite Setup     Start Browser Session
Test Teardown   Thinking And Take Screenshot        5

***Test Cases***
Cenário #1: Compra de item sem que o usuário esteja logado no sistema

    DADO QUE Coviderson acessa a página inicial do site da Amazon
    E ele confirma que o nome da Tab contém o texto: "Amazon.com.br | Compre livros, Kindle, Echo, Fire Tv e mais."
    QUANDO Coviderson realizar a busca, digitando o nome de um item "Qualidade E Teste Em Software" no campo de pesquisa
    E Clicar em Pesquisar
    ENTÃO deverá apresentar o resultado contendo o item "Qualidade E Teste Em Software" que Coviderson está pesquisando
    E encontra o item "Qualidade E Teste Em Software" na lista de resultados
    E Coviderson clica para acessar o item "Qualidade E Teste Em Software" escolhido
    E clicar em comprar agora
    MAS se Coviderson não estiver logado, ele deverá ser redirecionado para a página de login
