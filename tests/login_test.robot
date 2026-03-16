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
    # 1. ให้ Python ไปหา Path ของ Driver ที่ตรงกับ Chrome 145 ของคุณ
    
    ${driver_path}=    Evaluate    webdriver_manager.chrome.ChromeDriverManager().install()    modules=webdriver_manager.chrome
    
    # 2. ตั้งค่า Chrome Options
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless=new
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --window-size=1920,1080
    
    # ปรับปรุง: เพิ่มความเสถียรสำหรับ Chrome เวอร์ชันใหม่ๆ
    Call Method    ${options}    add_argument    --remote-allow-origins=*

    # 3. สร้าง WebDriver (สำคัญมาก: ต้องใช้ Create Webdriver แทน Open Browser ปกติ)
    Create Webdriver    Chrome    options=${options}    executable_path=${driver_path}
    
    # 4. ระบุ URL ที่ต้องการไป
    Go To    ${URL}
    Maximize Browser Window


*** Test Cases ***
Login Success
    Login AutoEasy    ${USERNAME}    ${PASSWORD}    ${BRANCH}