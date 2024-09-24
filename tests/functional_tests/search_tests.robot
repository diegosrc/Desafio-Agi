*** Settings ***
Documentation    Testes para verificar a funcionalidade de busca no sistema.
Library          SeleniumLibrary
Resource         ../resources/keywords.resource
Resource         ../resources/variables.resource
Resource         ../resources/home_elements.resource

*** Test Cases ***
 
Valid Search Test
     [Documentation]  Teste de busca com um termo válido.    
     Open Browser To Search Page    ${URL}
     Click and search    ${VALID_SEARCH_TERM}    ${SEARCH_ELEMENT}    ${SEARCH_INPUT_ELEMENT}
     [Teardown]    Close Browser

Invalid Search Test
     [Documentation]  Teste de busca com um termo inválido.    
     Open Browser To Search Page    ${URL}
     Click and search    ${INVALID_SEARCH_TERM}   ${SEARCH_ELEMENT}    ${SEARCH_INPUT_ELEMENT}
     [Teardown]    Close Browser

Empty Search Test
     [Documentation]  Teste de busca com um termo vazio ou em branco.    
     Open Browser To Search Page    ${URL}
     Click and search    ${EMPTY_SEARCH_TERM}   ${SEARCH_ELEMENT}    ${SEARCH_INPUT_ELEMENT}
     [Teardown]    Close Browser

Special char Search Test
     [Documentation]  Teste de busca com um termo com caractéres especiais.    
     Open Browser To Search Page    ${URL}
     Click and search    ${SPECIAL_CHAR_SEARCH_TERM}   ${SEARCH_ELEMENT}    ${SEARCH_INPUT_ELEMENT}
     [Teardown]    Close Browser

White Spaces Search Test
     [Documentation]  Teste de busca com um termo com espaços.    
     Open Browser To Search Page    ${URL}
     Click and search    ${SEARCH_TERM_WITH_SPACES}   ${SEARCH_ELEMENT}    ${SEARCH_INPUT_ELEMENT}
     [Teardown]    Close Browser

Long inpunt Search Test
     [Documentation]  Teste de busca com um termo com caractéres muito numerosos.    
     Open Browser To Search Page    ${URL}
     Click and search    ${LONG_SEARCH_TERM}   ${SEARCH_ELEMENT}    ${SEARCH_INPUT_ELEMENT}
     [Teardown]    Close Browser