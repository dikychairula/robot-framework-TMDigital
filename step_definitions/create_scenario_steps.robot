*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FEATURE_SEARCH}    Feature 4
${SCENARIO_NAME}     Scenario Robot 1
${ROLE}              Diky Chairul Azwar
${PRIORITY}          High
${PRE_CONDITION}     Given User Has Add Feature
${SCENARIO_STEPS}    Given User Has on Scenario Page\nWhen User Click Button Add\nAnd User Click Fill The Fields\nAnd User Click Submit Button\nThen User Has Add Scenario

*** Keywords ***
I Click Button Add New Scenario
    Click Button    //button[@data-target='#addNewScenario']
    Wait Until Element Is Visible    //input[@name='name']    timeout=15 seconds
I Fill Scenario Name
    Input Text    //input[@name='name']    ${SCENARIO_NAME}
I Choose Role To Assign
    Click Element    //button[contains(@class, 'multiselect dropdown-toggle btn btn-default')]
    Wait Until Element Is Visible    //label[contains(text(), '${ROLE}')]//input[@type='checkbox']    timeout=15 seconds
    Click Element    //label[contains(text(), '${ROLE}')]//input[@type='checkbox']
    Click Element    //button[contains(@class, 'multiselect dropdown-toggle btn btn-default')]
I Choose Priority
    Click Element    //a[@class='nav-link dropdown-toggle inputText std-input w-100']
    Wait Until Element Is Visible    (//span[contains(text(), '${Priority}')])[1]    timeout=15 seconds
    Click Element    (//span[contains(text(), '${Priority}')])[1]
I Fill Pre Condition
    Input Text    //*[@id="editor-01"]/div[1]    ${PRE_CONDITION}
I Fill Scenario Steps
  Input Text    //*[@id="editor-02"]/div[1]    ${SCENARIO_STEPS}
I Click Button Add
    Wait Until Element Is Visible    //button[@id='savedSuccess']
    Click Button    //button[@id='savedSuccess']
I Click Button Confirm Ok
    Sleep    5s
    Wait Until Element Is Visible    (//button[contains(text(), 'Ok')])[1]    timeout=10s
    Click Button    (//button[contains(text(), 'Ok')])[1]
New Scenario Created
    sleep    5s