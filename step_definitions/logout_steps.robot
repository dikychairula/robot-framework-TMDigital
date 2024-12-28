*** Settings ***
Library    SeleniumLibrary
Resource    ../step_definitions/login_steps.robot

*** Variables ***
${URL_LOGIN}    https://beta-tmdigital.stagingapps.net/login

*** Keywords ***
Logout From Website
    Login with valid credentials
    Click Element    //a[@id='userDropdown']
    Wait Until Element Is Visible    //a[contains(text(), 'Log out')]    timeout=10s
    Click Element    //a[contains(text(), 'Log out')]
    Location Should Be    ${URL_LOGIN}
    sleep    5s