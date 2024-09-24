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
     Click and search    text   ${SEARCH_ELEMENT}    ${SEARCH_INPUT_ELEMENT}
     