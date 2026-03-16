*** Settings ***
Library      SeleniumLibrary
Resource      ../pages/login_page.robot
Resource      ../resources/variables.robot
Resource      ../resources/env.robot
Resource      ../resources/login_testdata.robot
Resource      ../resources/login_locator.robot

Suite Setup        Open Browser And Login
Suite Teardown     Close Browser


*** Keywords ***
Open Browser And Login
    # 1. จัดการเรื่อง Driver (ใช้ webdriver-manager ช่วยดึง Path)
    ${driver_path}=    Evaluate    webdriver_manager.chrome.ChromeDriverManager().install()    modules=webdriver_manager.chrome
    
    # 2. ตั้งค่า Options ให้รองรับการรันทั้งในเครื่องและบน Server (GitHub)
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless=new
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --window-size=1920,1080
    Call Method    ${options}    add_argument    --remote-allow-origins=*

    # 3. เปิด Webdriver (ใช้ Create Webdriver เพื่อความชัวร์เรื่อง Path)
    Create Webdriver    Chrome    options=${options}    executable_path=${driver_path}
    
    # 4. เริ่มต้นการทำงาน
    Go To    ${URL}
    Maximize Browser Window


*** Test Cases ***
Login Success
    Login AutoEasy    ${USERNAME}    ${PASSWORD}    ${BRANCH}