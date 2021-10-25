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
Test Teardown      Thinking And Take Screenshot        5

***Test Cases***
Cenário #1: Compra de item sem que o usuário esteja logado no sistema

    DADO QUE Coviderson acessa o site da Amazon
    E a Tab contém o texto: "Amazon.com.br | Compre livros, Kindle, Echo, Fire Tv e mais."
    QUANDO Coviderson realizar a busca pelo item "Qualidade E Teste Em Software" no campo de pesquisa
    ENTÃO o item "Qualidade E Teste Em Software" deverá aparecer na lista de resultados
    E ao escolher o item "Qualidade E Teste Em Software", ao clicar para comprar
    MAS sem estar logado, o sistema deve redirecionar para a página de login
