Feature: Add Project

    Scenario: Add Project
    Given User has login
    When User click menu Project
    And User click button Add New Project
    And User uploads image
    And User fill Project Name
    And User fill Project Description
    And User choose Project Type
    And User choose QA Assigned to
    And User choose Start Date
    And User choose End Date
    And User choose Platform Type
    And User choose Technology
    And User testing Applications
    And User choose Guest Assigned to
    And User click button Save Project
    Then Success add new Project
