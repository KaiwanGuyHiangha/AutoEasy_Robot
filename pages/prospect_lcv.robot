*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/prospect_lcv.robot
Resource   ../resources/keywords.robot

*** Keywords ***

Create New Prospect LCV

    Select AutoComplete    ${PI_SalesConsultantName}    400904091
    Select AutoComplete    ${PI_CustomerBase}           New Vehicle Customer
    Select AutoComplete    ${PI_ProspectSource}         ลูกค้าเข้าโชว์รูม
    Select AutoComplete    ${PI_TypeofPurchase}         First Purchase
    Select AutoComplete    ${PI_TypeofUsage}            Private
    Select AutoComplete    ${PI_ModelGroup}             PICKUP
    sleep      1
    Select AutoComplete    ${PI_SubModelGroup1}         STD
     sleep      1
    Select AutoComplete    ${PI_SubModelGroup2}         N/A
     sleep      1

    Input Text    ${PI_Qty}    1

    Input Text    ${PI_CustomerRequiredDeliveryDate}    31/12/2026
    Input Text    ${PI_ExpectedDeliveryDate}            31/12/2026

    Click Element    ${PI_NegotiationModel}

    Wait Until Element Is Visible    ${Ng_ModelGroup}    10s

    Select AutoComplete    ${Ng_ModelGroup}                PICKUP
    sleep      1
    Select AutoComplete    ${Ng_ModelCode}                 URD20-Cab4 2.2 Ddi L
    sleep      1
    Select AutoComplete    ${Ng_ColorCode}                 BOS เทา บรอนซ์เงิน
    sleep      1
    Select AutoComplete    ${Ng_OptionCodeDescription}     P0000 STD(LCV)

    Input Text    ${Ng_Qty}    1
    Input Text    ${Ng_BookingDepositAmount_PerUnit}    3000

    Select AutoComplete    ${Ng_PurchaseType}    Cash

    Select AutoComplete    ${Ng_TISCampaign1}    1000000266
    sleep      1
    Select AutoComplete    ${Ng_TISCampaign2}    1000000416
    sleep      1
    Select AutoComplete    ${Ng_TISCampaign3}    1000000007
    sleep      1

    ${el}=    Get WebElement    ${Ng_Checkbox_SubmitNegotiationforApproval}
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${el}

    Click Element    ${PI_ProspectFollow-up}

    Wait Until Element Is Visible    ${Fl_Follow-upChannel}    10s

    Input Text    ${Fl_PlanNextFollow-upDate}     30/12/2026 00:00
    Press Keys    NONE    TAB

    Select AutoComplete    ${Fl_Follow-upChannel}      Call to Customer
    Input Text     ${Fl_Follow-upResult}                 Other
    sleep      1
    Press Keys    NONE    TAB
    Input Text    ${Fl_ProspectClosingProbability}      Warm
     sleep      1
    Press Keys    NONE    TAB

    Click Element    ${btn_SavePS}

    Wait Until Element Is Visible    ${btn_SaveCustomer_Yes}    10s
    Click Element    ${btn_SaveCustomer_Yes}

     sleep     5

    Click Blank Area

    Wait Until Element Is Not Visible
     ...    xpath=//div[contains(@class,'dx-overlay-shader')]
     ...    10s

     Click Element       ${PI_NegotiationModel}

     sleep     1

     ${el}=    Get WebElement    ${Ng_Checkbox_GenerateBooking} 
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${el}

     ${today}=    DateTime.Get Current Date    result_format=%d/%m/%Y
     Input Text    ${Ng_BookingDate}    ${today}
     Press Keys    NONE    TAB

     Input Text    ${Ng_EstimateDeliveryDate}     30/12/2026
     Press Keys    NONE    TAB

     Click Element    ${btn_SavePS}

    Wait Until Element Is Visible    ${btn_SaveCustomer_Yes}    10s
    Click Element    ${btn_SaveCustomer_Yes}

    sleep      10



