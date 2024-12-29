*** Settings ***
Library    SeleniumLibrary
Resource    create_scenario_steps.robot

*** Variables ***


*** Keywords ***
I Fill Search Feature Name
    Input Text    //input[@id='searchInput']    ${FEATURE_SEARCH}
I Click on Feature Name
    Wait Until Element Is Visible    //span[contains(text(), '${FEATURE_SEARCH}')]    timeout=15 seconds
    Click Element    //span[contains(text(), '${FEATURE_SEARCH}')]
I Am On The Scenario Page
    Page Should Contain    ${FEATURE_SEARCH}
    Page Should Contain    Scenario