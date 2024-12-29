*** Settings ***
Resource    ../step_definitions/search_feature_steps.robot
Resource    ../step_definitions/background.robot

*** Test Cases ***
Background
    Given User Open The Website
    When User is logged into the website
    And User Has Click On Project

User Search Feature By Name
    Given I Am On The Feature Page
    When I Fill Search Feature Name
    And I Click on Feature Name
    Then I Am On The Scenario Page