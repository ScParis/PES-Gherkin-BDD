***Settings***
Documentation       Login authentication

***Keywords***
DADO QUE eu acesso a página inicial
    New Page        about:blank
    Go To       https://www.amazon.com.br/

E o nome da Tab contenha o texto: "${EXPECTED_TEXT}"    
    ${TITLE}        Get Title
    Should Be Equal     ${TITLE}        ${EXPECTED_TEXT}

QUANDO realizo a busca digitando o nome do item "${ITEM}" no campo de pesquisa

    Fill Text     input[id="twotabsearchtextbox"]    ${ITEM}

E clicar em Pesquisar
    Click      input[value="Ir"]
    Wait For Elements State          xpath=//span[contains(text(), 'resultados')]            visible         2

ENTÃO o resultado contendo o item "${ITEM}" deve ser exibido na página
    
    ${RESULT}        Get Text     xpath=//div[@class="a-section a-spacing-small a-spacing-top-small"]//span[3]
    Should Be Equal     ${RESULT}        "${ITEM}"

E a categoria deverá ser alterada para "${CATEGORIA}" no campo de pesquisa
    
    ${CATEGORIA_ATIVADA}        Get Text     xpath=//option[@selected="selected"]
    Should Be Equal     ${CATEGORIA_ATIVADA}        "${CATEGORIA}"
