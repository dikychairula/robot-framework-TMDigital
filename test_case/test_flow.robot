*** Settings ***
Library    SeleniumLibrary

Resource    ../step_definitions/login_steps.robot
Resource    ../step_definitions/create_feature_steps.robot
Resource    ../step_definitions/logout_steps.robot
Resource    ../step_definitions/background.robot

*** Test Cases ***
Background
    Given User opens the VentureHub website
    
User Login with valid credentials
    Given I Should See Login Page
    When I Input Email
    And I Input Password
    And I Click Submit Button
    Then I Should See Dashboard

User Add New Feature
    Given I Should See Dashboard
    When I Click The Project
    And I Click Button Add New Feature
    And I Fill Project Name
    And I Choose Role Assign
    And I Fill Description Feature

#Create Scenario
#     Create Scenario in VentureHub Project

# Logout From Website
#     Given I Should See User Avatar
#     When I Click User Dropdown   
#     And I Click Logout Button
#     Then I Should See Login Page