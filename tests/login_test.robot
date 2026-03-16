*** Settings ***
Library      SeleniumLibrary
Resource     ../pages/login_page.robot
Resource     ../resources/variables.robot
Resource     ../resources/env.robot
Resource     ../resources/login_testdata.robot
Resource     ../resources/login_locator.robot

Suite Setup       Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser


*** Keywords ***
Open Browser And Login
    Open Browser    ${URL}    chrome    options=${CHROME_OPTIONS}
    Maximize Browser Window

*** Test Cases ***
Login Success
    Maximize Browser Window
    Login AutoEasy    ${USERNAME}    ${PASSWORD}    ${BRANCH}