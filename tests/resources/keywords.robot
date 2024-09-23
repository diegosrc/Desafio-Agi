*** Settings ***
Library    SeleniumLibrary
Library    ../src/pages/login_page.py

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    login_page.username_field    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    login_page.password_field    ${password}

Click Login Button
    Click Element    login_page.login_button

Input Search Term
    [Arguments]    ${search_term}
    Input Text    search_page.search_field    ${search_term}

Click Search Button
    Click Element    search_page.search_button

Leave Search Term Empty
    Clear Element Text    search_page.search_field