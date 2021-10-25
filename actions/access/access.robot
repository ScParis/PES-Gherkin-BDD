***Settings***
Documentation       Login authentication

***Keywords***
DADO que Coviderson acessa o site da Amazon
    New Page        about:blank
    Go To       https://www.amazon.com.br/

E a Tab contém o texto: "${EXPECTED_TEXT}"    
    ${TITLE}        Get Title
    Should Be Equal     ${TITLE}        ${EXPECTED_TEXT}

QUANDO Coviderson realizar a busca pelo item "${ITEM}" no campo de pesquisa

    Fill Text     input[id="twotabsearchtextbox"]    ${ITEM}

    Click      input[value="Ir"]
    Wait For Elements State          xpath=//span[contains(text(), 'resultados')]            visible         2

ENTÃO o item "${ITEM}" deverá aparecer na lista de resultados
    
    ${RESULT}        Get Text     xpath=//div[@class="a-section a-spacing-small a-spacing-top-small"]//span[3]
    Should Be Equal     ${RESULT}        "${ITEM}"

E ao escolher o item "${ITEM}", ao clicar para comprar
    
    ${ITEM_LOCALIZADO}        Get Text     xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[1]//div[2]/div[1]/h2/a/span
    Should Be Equal     ${ITEM_LOCALIZADO}        ${ITEM}

    Click      xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[1]//div[2]/div[1]/h2/a/span[contains(text(), "${ITEM}")]
    
    Wait For Elements State     xpath=//span[@id="productTitle"]            visible         2

    Click    xpath=//input[@id="buy-now-button"]

MAS sem estar logado, o sistema deve redirecionar para a página de login

    Wait For Elements State     xpath=//h1[contains( text(), "Fazer login")]            visible         2

