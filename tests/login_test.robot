*** Settings ***
Library      SeleniumLibrary
Resource     ../pages/login_page.robot
Resource     ../resources/variables.robot
Resource     ../resources/env.robot
Resource     ../resources/login_testdata.robot
Resource     ../resources/login_locator.robot

Suite Setup      Open Browser And Login
Suite Teardown   Close Browser

*** Keywords ***
Open Browser And Login
    # 1. ตั้งค่า Chrome Options ให้เป็น Headless (ไม่เปิดหน้าจอ)
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --window-size\=1920,1080
    Call Method    ${options}    add_argument    --remote-allow-origins=*

    # 2. เปิด Browser และไปยัง URL ที่กำหนดทันที
    # ใช้ Open Browser เพียงคำสั่งเดียว จะเสถียรกว่าการใช้ Create Webdriver ซ้ำซ้อน
    Open Browser    ${URL}    browser=chrome    options=${options}

*** Test Cases ***
Login Success
    Login AutoEasy    ${USERNAME}    ${PASSWORD}    ${BRANCH}