*** Settings ***
Library      SeleniumLibrary
Resource     ../pages/login_page.robot
Resource     ../resources/variables.robot
Resource     ../resources/env.robot
Resource     ../resources/login_testdata.robot
Resource     ../resources/login_locator.robot

Suite Setup        Open Browser And Login
Suite Teardown     Close Browser

*** Keywords ***
Open Browser And Login
${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
Call Method    ${options}    add_argument    --start-maximized
Call Method    ${options}    add_argument    --remote-allow-origins=*

```
${service}=    Evaluate    sys.modules['selenium.webdriver.chrome.service'].Service("C:/Users/kaiwanhi/Desktop/chromedriver-win64/chromedriver.exe")    sys, selenium.webdriver.chrome.service

Create Webdriver    Chrome    service=${service}    options=${options}

Go To    ${URL}
Maximize Browser Window
```

*** Test Cases ***
Login Success
Login AutoEasy    ${USERNAME}    ${PASSWORD}    ${BRANCH}
