*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/customermaster_locator.robot
Resource   ..pages/search_customer.robot

*** Keywords ***

Search Customer Profile Code
     Wait Until Element Is Visible      ${search_ProfileCode}     10s 
     input text          ${search_ProfileCode}         
     
     Scroll Element Into View    ${search_GetDetails} 
     Click Element               ${search_GetDetails}

     

     


