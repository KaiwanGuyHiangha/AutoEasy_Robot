*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/customermaster_locator.robot

*** Keywords ***

Get Customer Profile Code
     Click Element    ${BasicInfoTab} 

     Wait Until Element Is Visible      ${btn_SaveCustomer_Yes}    10s 
     Click Element    ${btn_SaveCustomer_Yes}

     

     


