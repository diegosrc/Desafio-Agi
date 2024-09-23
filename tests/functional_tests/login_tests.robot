*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords.robot
Variables  ../resources/variables.py
Suite Setup  Open Browser To Login Page
Suite Teardown  Close Browser

*** Test Cases ***
Valid Login Test
    [Documentation]  Teste para verificar login válido
    Input Username    ${VALID_USERNAME}
    Input Password    ${VALID_PASSWORD}
    Click Login Button
    Login Should Be Successful

Invalid Login Test
    [Documentation]  Teste para verificar login inválido
    Input Username    ${INVALID_USERNAME}
    Input Password    ${INVALID_PASSWORD}
    Click Login Button
    Error Message Should Be Displayed

*** Keywords ***
Login Should Be Successful
    Title Should Be    Home - Dashboard

Error Message Should Be Displayed
    Element Should Be Visible    ${ERROR_MESSAGE_LOCATOR}
