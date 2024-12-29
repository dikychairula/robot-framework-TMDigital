*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PROJECT}                 VentureHub
${FEATURE_NAME}            Robot1
${ROLE}                    Diky Chairul Azwar
${FEATURE_DESCRIPTION}     Detail Robot Framework 1

*** Keywords ***
I Click The Project
    Click Element    //span[contains(text(), '${PROJECT}')]
    Element Should Be Visible    //h2[contains(text(), 'Features List')]    timeout=15 seconds
I Click Button Add New Feature
    Click Button    //button[@data-target='#addNewFeature']
    Wait Until Element Is Visible    //input[@name='name']    timeout=15 seconds
I Fill Project Name
    Input Text    //input[@name='name']    ${FEATURE_NAME}
I Choose Role Assign
    Click Element    //button[contains(@class, 'multiselect dropdown-toggle btn btn-default')]
    Wait Until Element Is Visible    //label[contains(text(), '${ROLE}')]//input[@type='checkbox']    timeout=15 seconds
    Click Element    //label[contains(text(), '${ROLE}')]//input[@type='checkbox']
    Click Element    //button[contains(@class, 'multiselect dropdown-toggle btn btn-default')]
I Fill Description Feature
    Input Text    //textarea[@name='description']    ${FEATURE_DESCRIPTION}
    Sleep    5s
