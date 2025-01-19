*** Settings ***
Library    SeleniumLibrary
Resource    ../env.robot

*** Variables ***
${BROWSER}    Chrome
# Hidden Variable: SP_URL, EMAIL, PASSWORD

*** Keywords ***
I Input Email
    Input Text    //input[@name='email']    ${EMAIL}
I Input Password
    Input Text    //input[@name='password']    ${PASSWORD}
I Click Submit Button
    Click Button    //button[contains(text(), 'Sign In')]
I Should See Dashboard
    Wait Until Element Is Visible    //h1[contains(text(), 'Dashboard')]
    Element Should Be Visible    //h1[contains(text(), 'Dashboard')]    timeout=15 seconds
    Sleep    3s