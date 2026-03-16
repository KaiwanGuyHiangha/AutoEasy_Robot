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
    # 1. ให้ Python ไปหา Path ของ ChromeDriver ที่ตรงกับเวอร์ชัน 145.0.7632.160 มาให้
    ${driver_path}=    Evaluate    webdriver_manager.chrome.ChromeDriverManager().install()    modules=webdriver_manager.chrome
    
    # 2. ตั้งค่า Options (เหมือนที่คุณเขียนไว้เดิม)
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless=new
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --window-size=1920,1080

    # 3. สร้าง Webdriver โดยระบุ Path ที่เราได้จากขั้นตอนที่ 1
    Create Webdriver    Chrome    options=${options}    executable_path=${driver_path}
    
    # 4. สั่งให้ไปที่ URL และขยายหน้าต่าง
    Go To    ${URL}
    Maximize Browser Window


*** Test Cases ***
Login Success
    Login AutoEasy    ${USERNAME}    ${PASSWORD}    ${BRANCH}