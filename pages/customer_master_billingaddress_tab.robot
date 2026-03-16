*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/customermaster_locator.robot
Resource   ../resources/keywords.robot

*** Keywords ***

Input Customer Billing Address
     Click Element    ${btn_BillingAddress_tab} 

     Input Text        ${BillingAddress_HouseNo}      67
    Press Keys    NONE    TAB
    Input Text         ${BillingAddress_Address}       ""
    Press Keys    NONE    TAB
    Input Text         ${BillingAddress_RoomNo}       ""
    Press Keys    NONE    TAB
    Input Text         ${BillingAddress_Building}       ""
    Press Keys    NONE    TAB
    Input Text         ${BillingAddress_Village}       ""
    Press Keys    NONE    TAB
    Input Text         ${BillingAddress_Soi}       ""
    Press Keys    NONE    TAB
    Input Text         ${BillingAddress_Moo}      3
    Press Keys    NONE    TAB
    Input Text         ${BillingAddress_Road}       ""
    Press Keys    NONE    TAB
    Input Text         ${BillingAddress_Province}      กรุงเทพมหานคร
    Press Keys    NONE    TAB
    Input Text         ${BillingAddress_District}      จตุจักร
    Press Keys    NONE    TAB
    Input Text         ${BillingAddress_Sub-Distric}   จตุจักร
    Press Keys    NONE    TAB
    Select AutoComplete        ${BillingAddress_ZipCode}  10900

     


