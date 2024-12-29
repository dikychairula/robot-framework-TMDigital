*** Settings ***
Library    SeleniumLibrary
Resource    ../step_definitions/login_steps.robot
Resource    ../step_definitions/create_feature_steps.robot
Resource    ../step_definitions/logout_steps.robot
Resource    ../step_definitions/background.robot

*** Test Cases ***
Background
    Given User Open The Website
    
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
    And I Fill Feature Name
    And I Choose Role Assign
    And I Fill Description Feature
    And I Click Button Save
    And I Click Button Confirm
    And I Click Button Ok
    Then New Feature Created

User Search Feature By Name
    Given I Am On The Feature Page
    When I Fill Search Feature Name
    And I Click on Feature Name
    Then I Am On The Scenario Page

User Add New Scenario
    Given I Am On The Scenario Page
    When I Click Button Add New Scenario
    And I Fill Scenario Name
    And I Choose Role To Assign
    And I Choose Priority
    And I Fill Pre Condition
    And I Fill Scenario Steps
    And I Click Button Save
    And I Click Button Add
    And I Click Button Confirm Ok
    Then New Scenario Created
  
Logout From Website
    Given I Should See User Avatar
    When I Click User Dropdown
    And I Click Logout Button
    Then I Should See Login Page