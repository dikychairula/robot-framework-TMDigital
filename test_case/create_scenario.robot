*** Settings ***
Resource    ../step_definitions/create_scenario_steps.robot
Resource    ../step_definitions/background.robot

*** Test Cases ***
Background
  Given User Open The Website
  When User is logged into the website
  And User Has Click On Project
  And User Has on Scenario Page

Add New Scenario
  When I Click Button Add New Scenario
  And I Fill Scenario Name
  And I Choose Role To Assign
  And I Choose Priority
  And I Fill Pre Condition
  And I Fill Scenario Steps