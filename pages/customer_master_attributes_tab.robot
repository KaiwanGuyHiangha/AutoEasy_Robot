*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/customermaster_locator.robot
Resource   ../resources/keywords.robot

*** Keywords ***

Input Customer Attributes
     Click Element    ${btn_Attributes_tab} 

     Select AutoComplete        ${Occupation1}      Other(specify….)
    Input Text         ${OccupationRemarks}       TESTING
    Press Keys    NONE    TAB
    

     


