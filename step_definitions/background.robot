*** Settings ***
Resource    ../step_definitions/login_steps.robot
Resource    ../env.robot
Resource    create_feature_steps.robot

*** Keywords ***
User Open The Website
  Open Browser    ${SP_URL}    ${BROWSER}
  Maximize Browser Window

User Is Logged Into the Website
  I Should See Login Page
  I Input Email
  I Input Password
  I Click Submit Button
  I Should See Dashboard

#Validation
I Should See Login Page
  Page Should Contain    Sign in
  sleep    3s

I Am On The Feature Page
  Element Should Be Visible    //h2[contains(text(), 'Features List')]