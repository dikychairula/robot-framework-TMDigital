*** Settings ***
Library    SeleniumLibrary
Resource    ../env.robot

*** Variables ***
${BROWSER}    Chrome
# Hidden Variable: SP_URL, EMAIL, PASSWORD

*** Keywords ***
Login with valid credentials
    Open Browser    ${SP_URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    //input[@name='email']    ${EMAIL}
    Input Text    //input[@name='password']    ${PASSWORD}
    Click Button    //button[contains(text(), 'Sign In')]
    Element Should Be Visible    //h1[contains(text(), 'Dashboard')]
    Sleep    5s