***Settings***
Documentation       Caso de teste criado no modelo BDD

# Resource            resources/base.robot
Resource          ${EXECDIR}/resources/base.robot

Suite Setup     Start Browser Session
Test Teardown   Thinking And Take Screenshot        5

***Test Cases***
Cenário #1: Busca por produto cadastrado

    DADO QUE eu acesso a página inicial
    E o nome da Tab contenha o texto: "Amazon.com.br | Compre livros, Kindle, Echo, Fire Tv e mais."
    QUANDO realizo a busca digitando o nome do item "engenharia de software" no campo de pesquisa
    E Clicar em Pesquisar
    ENTÃO o resultado contendo o item "engenharia de software" deve ser exibido na página