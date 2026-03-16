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
    # 1. ตั้งค่า Chrome Options
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless=new
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --window-size=1920,1080
    Call Method    ${options}    add_argument    --remote-allow-origins=*

```
    # 2. ระบุ path chromedriver ของคุณโดยตรง
    ${driver_path}=    Set Variable    C:/Users/kaiwanhi/Desktop/chromedriver-win64/chromedriver.exe

    # 3. สร้าง WebDriver
    Create Webdriver    Chrome    options=${options}    executable_path=${driver_path}

    # 4. เปิดเว็บ
    Go To    ${URL}
    Maximize Browser Window
```

*** Test Cases ***
Login Success
Login AutoEasy    ${USERNAME}    ${PASSWORD}    ${BRANCH}
