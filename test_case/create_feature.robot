*** Settings ***
Library    SeleniumLibrary
Resource    ../step_definitions/create_feature_steps.robot
Resource    ../step_definitions/background.robot

*** Test Cases ***
Background
  Given User Open The Website
  When User is logged into the website
  
User Add New Feature
  Given I Should See Dashboard
  When I Click The Project
  And I Click Button Add New Feature
  And I Fill Project Name
  And I Choose Role Assign
  And I Fill Description Feature
    