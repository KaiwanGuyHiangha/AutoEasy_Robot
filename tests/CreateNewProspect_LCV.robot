*** Settings ***
Library      SeleniumLibrary
Resource     ../resources/keywords.robot
Resource     ../pages/login_page.robot
Resource     ../pages/Goto_CustomerMasterScreen.robot
Resource     ../resources/login_testdata.robot
Resource     ../pages/customer_master_basicinfo_tab.robot
Resource     ../pages/customer_master_contactdetails_tab.robot
Resource     ../pages/customer_master_addressinfo_tab.robot
Resource     ../pages/customer_master_billingaddress_tab.robot
Resource     ../pages/customer_master_attributes_tab.robot
Resource     ../pages/customer_master_save.robot

Suite Setup       Open Browser And Login
Suite Teardown    Close Browser

*** Test Cases ***

Goto CustomerMaster Screen
    Goto CustomerMaster Screen

Input Customer Basic Info
    Input Customer Basic Info

Input Customer Contact Details
    Input Customer Contact Details

Input Customer Address Info
    Input Customer Address Info

Input Customer Billing Address
    Input Customer Billing Address

Input Customer Attributes
    Input Customer Attributes

Input Customer Save Customer
    Input Customer Save Customer