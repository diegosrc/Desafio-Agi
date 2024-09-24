*** Settings ***
Library    SeleniumLibrary
Library    ../../.venv/Lib/site-packages/robot/libraries/XML.py

*** Keywords ***

Open Browser To Search Page
    [Arguments]    ${address}
    Open Browser   ${address}    Chrome
    Maximize Browser Window

Click and search
    [Arguments]    ${input}    ${button_search_xpath}    ${search_input_xpath}
    Click Link    ${button_search_xpath}
    Input Text    ${search_input_xpath}    ${input}
    Press Keys  ${search_input_xpath}    ENTER
    Sleep    10

Text element matching
    [Arguments]    ${element_locator}    ${expected_text}
    ${element_text}=    Get Text    ${element_locator}
    Should Be Equal    ${element_text}    ${expected_text}
