*** Settings ***
Library    SeleniumLibrary
Resource    ../step_definitions/login_steps.robot
Resource    ../step_definitions/create_feature_steps.robot
Resource    ../step_definitions/create_scenario_steps.robot
Resource    ../step_definitions/logout_steps.robot

*** Test Cases ***
Login
    Login with valid credentials

Create Feature
    Create Feature Project

#Create Scenario
#     Create Scenario in VentureHub Project

Logout
    Click Button    //*[@id="addNewFeature"]/div/div/div[1]/button
    Logout From Website