*** Settings ***
Library    SeleniumLibrary
Resource    ../step_definitions/login_steps.robot

*** Keywords ***
I Click User Dropdown
    Click Element    //a[@id='userDropdown']
    Wait Until Element Is Visible    //a[contains(text(), 'Log out')]    timeout=10s
I Click Logout Button
    Click Element    //a[contains(text(), 'Log out')]