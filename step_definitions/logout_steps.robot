*** Settings ***
Library    SeleniumLibrary
Resource    ../step_definitions/login_steps.robot

*** Variables ***

*** Keywords ***
I Should See User Avatar
    Element Should Be Visible    //img[@class='img-profile rounded-circle']    timeout=15 seconds
I Click User Dropdown
    Click Element    //a[@id='userDropdown']
    Wait Until Element Is Visible    //a[contains(text(), 'Log out')]    timeout=15s
I Click Logout Button
    Sleep    1s
    Click Element    //a[contains(text(), 'Log out')]