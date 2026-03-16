*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/customermaster_locator.robot
Resource   ../resources/keywords.robot

*** Keywords ***

Input Customer Contact Details
     Wait Until Element Is Not Visible    xpath=//*[@id="progress-indicator"]    20s
     Click Element    ${ContactDetails}

    ${Random_Mobile}=    Generate Random Mobile Number
     Input Text    ${MobilePhoneNo1}     ${Random_Mobile}
    Press Keys    NONE    TAB
    Select AutoComplete          ${PrimaryContactNo}  Mobile 1
    Select AutoComplete          ${PreferredContactChannel}  โทรศัพท์
     


