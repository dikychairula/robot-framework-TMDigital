*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PROJECT}    VentureHub


*** Keywords ***
Create Feature PROJECT
    Click Element    //span[contains(text(), '${PROJECT}')]
    Element Should Be Visible    //h2[contains(text(), 'Features List')]
    Click Button    //button[@data-target='#addNewFeature']
    Wait Until Element Is Visible    //input[@name='name']    timeout=10 seconds
    Input Text    //input[@name='name']    Robot1
    Click Element    //button[contains(@class, 'multiselect dropdown-toggle btn btn-default')]
    Wait Until Element Is Visible    //label[contains(text(), 'Diky Chairul Azwar')]//input[@type='checkbox']    timeout=10 seconds
    Click Element    //label[contains(text(), 'Diky Chairul Azwar')]//input[@type='checkbox']
    Click Element    //button[contains(@class, 'multiselect dropdown-toggle btn btn-default')]
    Input Text    //textarea[@name='description']    Detail Robot Framework
    Sleep    10s
