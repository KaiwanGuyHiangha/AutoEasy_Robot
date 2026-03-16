*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/menu_locator.robot
Resource   ../resources/keywords.robot

*** Keywords ***

Goto CustomerMaster Screen
    Handle Overlay Popup
    Wait Until Element Is Visible   ${btn_CommonMasters}    10s 
    Click Sidebar Menu    ${btn_CommonMasters}
    Wait Until Element Is Visible   ${btn_Customer}    10s 
    Click Sidebar Menu    ${btn_Customer}
    Wait Until Element Is Visible   ${btn_SearchCustomer}     10s 
    Click Sidebar Menu    ${btn_SearchCustomer}