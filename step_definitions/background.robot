*** Settings ***
Resource    ../step_definitions/login_steps.robot
Resource    ../env.robot

*** Variables ***
*** Keywords ***
User opens the VentureHub website
  Open Browser    ${SP_URL}    ${BROWSER}
  Maximize Browser Window
I Should See Login Page
  Page Should Contain    Sign in
  sleep    3s
User is logged into the website
  I Should See Login Page
  I Input Email
  I Input Password
  I Click Submit Button
  I Should See Dashboard