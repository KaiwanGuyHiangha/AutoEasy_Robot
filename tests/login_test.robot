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
    # 1. ตั้งค่า Chrome Options เพื่อความเสถียร (แก้ปัญหา SessionNotCreatedException)
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --start-maximized
    Call Method    ${options}    add_argument    --remote-allow-origins=*
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    
    # หมายเหตุ: หากนำไปรันบน CI/CD (Jenkins/GitHub Actions) ให้เปิดใช้บรรทัดล่างนี้ (เอา # ออก)
    Call Method    ${options}    add_argument    --headless

    # 2. ใช้ WebDriver Manager ช่วยจัดการ Driver ให้ตรงกับเวอร์ชัน Chrome ในเครื่องโดยอัตโนมัติ
    ${driver_path}=    Evaluate    sys.modules['webdriver_manager.chrome'].ChromeDriverManager().install()    sys, webdriver_manager.chrome
    ${service}=       Evaluate    sys.modules['selenium.webdriver.chrome.service'].Service(executable_path=r'${driver_path}')    sys, selenium.webdriver.chrome.service

    # 3. สร้าง Webdriver ด้วย Service และ Options ที่เตรียมไว้
    Create Webdriver    Chrome    service=${service}    options=${options}

    Go To    ${URL}

*** Test Cases ***
Login Success
    Login AutoEasy    ${USERNAME}    ${PASSWORD}    ${BRANCH}