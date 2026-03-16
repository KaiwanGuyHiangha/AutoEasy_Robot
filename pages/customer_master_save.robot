*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/customermaster_locator.robot

*** Keywords ***

Input Customer Save Customer
     Click Element    ${btn_Save_tab}

     Wait Until Element Is Visible      ${btn_SaveCustomer_Yes}    10s 
     Click Element    ${btn_SaveCustomer_Yes}
     sleep  5
     Click Blank Area

     Click Element       ${BasicInfoTab}

     ${el}=    Get WebElement    ${btn_ProspectLCV}
     Execute Javascript    arguments[0].click();    ARGUMENTS    ${el}

     sleep  5

     

     


