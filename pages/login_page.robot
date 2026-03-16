*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/login_locator.robot

*** Keywords ***

Select Language English
    Click Element    ${ddl_language}
    Click Element    xpath=//li[contains(text(),'English')]


Input Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${txt_username}    10s
    Input Text    ${txt_username}    ${username}


Input Password
    [Arguments]    ${password}
    Input Text    ${txt_password}    ${password}


Select Branch
    [Arguments]    ${branch}

    Wait Until Element Is Visible    ${ddl_branch}    10s
    Click Element    ${ddl_branch}

    Wait Until Element Is Visible    ${txt_branch_search}    10s
    Input Text    ${txt_branch_search}    ${branch}

    Wait Until Element Is Visible    ${branch_first}    10s
    Click Element    ${branch_first}


Click Login
    Click Button    ${btn_login}
    sleep      1


Handle Confirm Popup
    [Arguments]    ${password}

    ${popup}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible    ${popup_confirm}    3s

    IF    ${popup}
        Click Element    ${btn_yes}
        Wait Until Element Is Visible    ${txt_password}    10s
        Input Text    ${txt_password}    ${password}
        Click Button    ${btn_login}
    END


Close Pop-up
    ${popup}=    Run Keyword And Return Status
    ...    Element Should Be Visible    ${btn_ok}

    IF    ${popup}
        Click Element    ${btn_ok}
    END


Login AutoEasy
    [Arguments]    ${username}    ${password}    ${branch}

    Select Language English
    Input Username    ${username}
    Input Password    ${password}
    Select Branch     ${branch}
    Click Login

    Handle Confirm Popup    ${password}

    sleep       1

    Close Pop-up