*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Resource   ../pages/login_page.robot
Resource   ../resources/login_testdata.robot
Resource   ../resources/env.robot


*** Keywords ***

Open Browser And Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Execute Javascript    document.body.style.zoom='80%'
    Login AutoEasy    ${USERNAME}    ${PASSWORD}    ${BRANCH}

Click Sidebar Menu
    [Arguments]    ${locator}

    ${el}=    Get WebElement    ${locator}
    Execute Javascript    arguments[0].scrollIntoView({block:'center'});    ARGUMENTS    ${el}
    Wait Until Element Is Visible    ${locator}    10s
    Click Element    ${locator}

Handle Overlay Popup
    ${popup}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible    xpath=//div[contains(@class,'dx-overlay-shader')]    3s

    IF    ${popup}
        Click Element    ${btn_ok}
    END

Generate Random Thai Personal ID
    ${digits}=    Evaluate    [random.randint(0,9) for _ in range(12)]    modules=random
    ${sum}=    Evaluate    sum([(13-i)*d for i,d in enumerate($digits)])
    ${check}=    Evaluate    (11-($sum%11))%10
    ${pid}=    Evaluate    ''.join(map(str,$digits))+str($check)
    [Return]    ${pid}

Generate Random Mobile Number
    ${prefix}=    Evaluate    random.choice(['06','08','09'])    modules=random
    ${number}=    Evaluate    ''.join([str(random.randint(0,9)) for _ in range(8)])    modules=random
    ${mobile}=    Set Variable    ${prefix}${number}
    [Return]    ${mobile}

Select AutoComplete
    [Arguments]    ${locator}    ${value}

    Input Text    ${locator}    ${value}

    ${option}=    Set Variable
    ...    xpath=//div[contains(@class,'dx-item-content') and contains(.,'${value}')]

    Wait Until Element Is Visible    ${option}    5s
    Click Element    ${option}

Input Safe Text
    [Arguments]    ${locator}    ${value}
    Wait Until Keyword Succeeds
    ...    10s
    ...    1s
    ...    Input Text    ${locator}    ${value}

Safe Tab
    Wait Until Keyword Succeeds
    ...    5s
    ...    500ms
    ...    Press Keys    NONE    TAB

Clear Safe Text
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds
    ...    10s
    ...    1s
    ...    Clear Element Text    ${locator}

Click Safe
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    10s    1s
    ...    Click Element    ${locator}

Input And Commit
    [Arguments]    ${locator}    ${value}
    Input Safe Text    ${locator}    ${value}
    Execute Javascript    document.activeElement.blur()
    Wait Until Element Attribute Contains    ${locator}    value    ${value}    5s

Get Current Date
    ${today}=    Get Current Date    result_format=%d/%m/%Y
    [Return]    ${today}

Click Blank Area
    Click Element    xpath=//body