*** Settings ***
Library      SeleniumLibrary
Resource     ../pages/login_page.robot
Resource     ../resources/variables.robot
Resource     ../resources/env.robot
Resource     ../resources/login_testdata.robot
Resource     ../resources/login_locator.robot

Suite Setup       Open Browser And Login
Suite Teardown    Close Browser


*** Keywords ***
Open Browser And Login
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage

    Open Browser    ${URL}    chrome    options=${options}
    Maximize Browser Window


*** Test Cases ***
Login Success
    Login AutoEasy    ${USERNAME}    ${PASSWORD}    ${BRANCH}