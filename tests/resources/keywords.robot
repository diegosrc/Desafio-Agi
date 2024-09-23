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
