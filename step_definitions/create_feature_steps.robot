*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PROJECT}                 VentureHub
${FEATURE_NAME}            Robot4
${ROLE}                    Diky Chairul Azwar
${FEATURE_DESCRIPTION}     Detail Robot Framework 4

*** Keywords ***
I Click The Project
    Click Element    //span[contains(text(), '${PROJECT}')]
    Element Should Be Visible    //h2[contains(text(), 'Features List')]    timeout=15 seconds
I Click Button Add New Feature
    Click Button    //button[@data-target='#addNewFeature']
    Wait Until Element Is Visible    //input[@name='name']    timeout=15 seconds
I Fill Feature Name
    Input Text    //input[@name='name']    ${FEATURE_NAME}
I Choose Role Assign
    Click Element    //button[contains(@class, 'multiselect dropdown-toggle btn btn-default')]
    Wait Until Element Is Visible    //label[contains(text(), '${ROLE}')]//input[@type='checkbox']    timeout=15 seconds
    Click Element    //label[contains(text(), '${ROLE}')]//input[@type='checkbox']
    Click Element    //button[contains(@class, 'multiselect dropdown-toggle btn btn-default')]
I Fill Description Feature
    Input Text    //textarea[@name='description']    ${FEATURE_DESCRIPTION}
I Click Button Save
    Click Button    //*[@id="form-add"]/div[5]/button[2]
I Click Button Confirm
    Wait Until Element Is Visible    //button[@id='btnAddFeature']
    Click Button    //button[@id='btnAddFeature']
I Click Button Ok
    Wait Until Element Is Visible    //*[@id="savedFeatureUpdateSuccess"]/div/div/div[2]/div/button
    Click Button    //*[@id="savedFeatureUpdateSuccess"]/div/div/div[2]/div/button
# New Feature Create  