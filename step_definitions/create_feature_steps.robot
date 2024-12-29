*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PROJECT}    VentureHub
${ROLE}    Diky Chairul Azwar

*** Keywords ***
I Click The Project
    Click Element    //span[contains(text(), '${PROJECT}')]
    Element Should Be Visible    //h2[contains(text(), 'Features List')]
I Click Button Add New Feature
    Click Button    //button[@data-target='#addNewFeature']
    Wait Until Element Is Visible    //input[@name='name']    timeout=10 seconds
I Fill Project Name
    Input Text    //input[@name='name']    Robot1
I Choose Role Assign
    Click Element    //button[contains(@class, 'multiselect dropdown-toggle btn btn-default')]
    Wait Until Element Is Visible    //label[contains(text(), '${ROLE}')]//input[@type='checkbox']    timeout=10 seconds
    Click Element    //label[contains(text(), '${ROLE}')]//input[@type='checkbox']
    Click Element    //button[contains(@class, 'multiselect dropdown-toggle btn btn-default')]
I Fill Description Feature
    Input Text    //textarea[@name='description']    Detail Robot Framework
    Sleep    5s
