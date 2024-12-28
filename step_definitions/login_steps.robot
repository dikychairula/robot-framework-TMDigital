*** Settings ***
Library    SeleniumLibrary
Library    dotenv

*** Variables ***
${BROWSER}    Chrome
${SP_URL}    Get Environment Variable    SP_URL
${EMAIL}     Get Environment Variable    EMAIL
${PASSWORD}  Get Environment Variable    PASSWORD
 
*** Keywords ***
Login with valid credentials
    Open Browser    ${SP_URL}    ${BROWSER}
    Input Text    //input[@name='email']    ${EMAIL}
    Input Password    //input[@name='password']    ${PASSWORD}
    Click Button    //button[contains(text(), 'Sign In')]
    Element Should Be Visible    //h1[contains(text(), 'Dashboard')]
    Sleep    5s
    