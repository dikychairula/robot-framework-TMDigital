*** Settings ***
Resource    ../step_definitions/logout_steps.robot
Resource    ../test_case/login.robot
Resource    ../step_definitions/background.robot

*** Test Cases ***
Background
  Given User Open The Website
  When User is logged into the website
  
Logout From Website
  Given I Should See User Avatar
  When I Click User Dropdown   
  And I Click Logout Button
  Then I Should See Login Page