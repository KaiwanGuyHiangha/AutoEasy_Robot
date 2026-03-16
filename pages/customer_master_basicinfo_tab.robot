*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/customermaster_locator.robot
Resource   ../resources/variables.robot
Resource   ../resources/keywords.robot

*** Keywords ***

Input Customer Basic Info
     Wait Until Element Is Visible   ${BasicInfoTab}     10s 

     ${el}=    Get WebElement    xpath=//dx-check-box[@id='IsAcknowledgePrivacyPolicy']
     Execute Javascript    arguments[0].click();    ARGUMENTS    ${el}

    Input Text          ${Salutation}  ${Variables_Salutation} 
    Press Keys    NONE    TAB
    Input Text          ${FirstName}  ${Variables_FirstName}
    Press Keys    NONE    TAB
    Input Text          ${LastName}  ${Variables_LastName} 
    Press Keys    NONE    TAB
    Select AutoComplete    ${Gender}    ${Variables_Gender} 
    Input Text          ${DateofBirth}  ${Variables_DateofBirth}
     Press Keys    NONE    TAB
     ${Random_PersonalId}=    Generate Random Thai Personal ID
     Input Text    ${PersonalId}    ${Random_PersonalId}
     Press Keys    NONE    TAB


