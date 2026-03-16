*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/customermaster_locator.robot
Resource   ../resources/keywords.robot

*** Keywords ***

Input Customer Address Info

    Click Safe    ${btn_AddressInfo_tab}
    Wait Until Element Is Visible    ${AddressInfo_HouseNo}    10s

    Input Safe Text    ${AddressInfo_HouseNo}    67
    Safe Tab

    Clear Safe Text    ${AddressInfo_Address}
    Safe Tab

    Clear Safe Text    ${AddressInfo_RoomNo}
    Safe Tab

    Clear Safe Text    ${AddressInfo_Building}
    Safe Tab

    Clear Safe Text    ${AddressInfo_Village}
    Safe Tab

    Clear Safe Text    ${AddressInfo_Soi}
    Safe Tab

    Input Safe Text    ${AddressInfo_Moo}    3
    Safe Tab

    Clear Safe Text    ${AddressInfo_Road}
    Safe Tab

    Input Text     ${AddressInfo_Province}     กรุงเทพมหานคร
    sleep       1
    Press Keys    NONE    TAB
    Input Text     ${AddressInfo_District}      จตุจักร
    sleep       1
    Press Keys    NONE    TAB
    Input Text     ${AddressInfo_Sub-Distric}     จตุจักร
    sleep       1
    Press Keys    NONE    TAB
    Input Text     ${AddressInfo_ZipCode}    10900
    sleep       1
    Press Keys    NONE    TAB

    ${el}=    Get WebElement    ${AddressInfo_btn_AddAddress}
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${el}