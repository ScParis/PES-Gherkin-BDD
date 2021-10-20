***Settings***
Documentation       Login authentication

***Keywords***
DADO QUE Coviderson acessa a página inicial do site da Amazon
    New Page        about:blank
    Go To       https://www.amazon.com.br/

E ele confirma que o nome da Tab contém o texto: "${EXPECTED_TEXT}"    
    ${TITLE}        Get Title
    Should Be Equal     ${TITLE}        ${EXPECTED_TEXT}

QUANDO Coviderson realizar a busca, digitando o nome de um item "${ITEM}" no campo de pesquisa

    Fill Text     input[id="twotabsearchtextbox"]    ${ITEM}

E clicar em Pesquisar
    Click      input[value="Ir"]
    Wait For Elements State          xpath=//span[contains(text(), 'resultados')]            visible         2

ENTÃO deverá apresentar o resultado contendo o item "${ITEM}" que Coviderson está pesquisando
    
    ${RESULT}        Get Text     xpath=//div[@class="a-section a-spacing-small a-spacing-top-small"]//span[3]
    Should Be Equal     ${RESULT}        "${ITEM}"

E encontra o item "${ITEM}" na lista de resultados
    
    ${ITEM_LOCALIZADO}        Get Text     xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[1]//div[2]/div[1]/h2/a/span
    Should Be Equal     ${ITEM_LOCALIZADO}        ${ITEM}

E Coviderson clica para acessar o item "${ITEM}" escolhido

    Click      xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[1]//div[2]/div[1]/h2/a/span[contains(text(), "${ITEM}")]
    
    Wait For Elements State     xpath=//span[@id="productTitle"]            visible         2

E clicar em comprar agora
    Click    xpath=//input[@id="buy-now-button"]

MAS se Coviderson não estiver logado, ele deverá ser redirecionado para a página de login

    Wait For Elements State     xpath=//h1[contains( text(), "Fazer login")]            visible         2

