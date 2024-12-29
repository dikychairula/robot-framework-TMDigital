*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PROJECT}                 VentureHub
${FEATURE_NAME}            Robot15
${ROLE}                    Diky Chairul Azwar
${FEATURE_DESCRIPTION}     Detail Robot Framework 15

*** Keywords ***
I Click The Project
    Wait Until Element Is Visible    //span[contains(text(), '${PROJECT}')]
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
    Sleep    3s
    Wait Until Element Is Visible    (//button[contains(text(), 'Ok')])[3]    timeout=10s
    Click Button    (//button[contains(text(), 'Ok')])[3]
New Feature Created
    sleep    2s

    