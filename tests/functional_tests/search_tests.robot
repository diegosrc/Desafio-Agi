*** Settings ***
Documentation    Testes para verificar a funcionalidade de busca no sistema.
Library          SeleniumLibrary
Resource         ../resources/keywords.robot
Variables        ../resources/variables.py
Suite Setup      Open Browser To Search Page
Suite Teardown   Close Browser

*** Test Cases ***
Valid Search Test
    [Documentation]  Teste de busca com um termo válido.
    Input Search Term    ${VALID_SEARCH_TERM}
    Click Search Button
    Search Results Should Be Displayed

Invalid Search Test
    [Documentation]  Teste de busca com um termo inválido.
    Input Search Term    ${INVALID_SEARCH_TERM}
    Click Search Button
    No Results Message Should Be Displayed

Empty Search Test
    [Documentation]  Teste de busca com o campo de busca vazio.
    Leave Search Term Empty
    Click Search Button
    Error Message Should Be Displayed

*** Keywords ***
Search Results Should Be Displayed
    [Documentation]  Verifica se os resultados da busca são exibidos.
    Element Should Be Visible    ${SEARCH_RESULTS_LOCATOR}

No Results Message Should Be Displayed
    [Documentation]  Verifica se a mensagem de "nenhum resultado" é exibida para uma busca inválida.
    Element Should Be Visible    ${NO_RESULTS_LOCATOR}

Error Message Should Be Displayed
    [Documentation]  Verifica se uma mensagem de erro é exibida quando o campo de busca está vazio.
    Element Should Be Visible    ${EMPTY_SEARCH_ERROR_LOCATOR}
