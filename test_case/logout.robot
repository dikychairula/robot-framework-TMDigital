*** Settings ***
Resource    ../step_definitions/logout_steps.robot
Resource    ../test_case/login.robot
Resource    ../step_definitions/background.robot

*** Test Cases ***
Background
  Given User opens the VentureHub website
  When User is logged into the website
Logout From Website
  Given I Should See Dashboard
  When I Click User Dropdown   
  And I Click Logout Button
  Then I Should See Login Page