*** Settings ***
Resource    ../step_definitions/login_steps.robot
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