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
    ${is_local}=    Run Keyword And Return Status    File Should Exist    C:/Program Files/Google/Chrome/Application/chrome.exe
    IF    ${is_local}
        ${options.binary_location}=    Set Variable    C:/Program Files/Google/Chrome/Application/chrome.exe
    END

    Call Method    ${options}    add_argument    --headless\=new
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    
    Create Webdriver    Chrome    options=${options}
    Go To    ${BASE_URL}
    Maximize Browser Window


*** Test Cases ***
Login Success
    Login AutoEasy    ${USERNAME}    ${PASSWORD}    ${BRANCH}