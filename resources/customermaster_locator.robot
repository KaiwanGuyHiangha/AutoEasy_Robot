*** Variables ***

${BasicInfoTab}                 id=mat-tab-label-0-0
${ProfileCode}              xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[1]/div/app-basic-info/form/div/div/div[1]/div[2]/div[4]/dx-text-box/div/div[1]/input
${CustomerType}              id=CustomerType
${CustomerSubType}      id=CustomerSubType
${Source}               id=Source
${CustomerStatus}       id=Status
${FollowUpStatus}       id=FollowUpStatus
${IsAcknowledgePrivacyPolicy}    xpath=//*[@class="dx-checkbox-icon"]
${Salutation}                    xpath=//dx-text-box[@formcontrolname='Salutation']//input
${FirstName}                    xpath=//dx-text-box[@formcontrolname='FirstName']//input
${LastName}                    xpath=//dx-text-box[@formcontrolname='LastName']//input
${Gender}                    xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[1]/div/app-basic-info/form/div/div/div[1]/div[5]/div[1]/div[3]/dx-select-box/div[1]/div/div[1]/input
${InputGender}          xpath=//*[@id='Gender']//*[@class='dx-texteditor-input']
${Male}                       xpath=//div[contains(@class,'dx-item-content') and text()='Female']
${DateofBirth}                    xpath=//*[@class="dx-texteditor-input input-medium th-calendar"]
${PersonalId}                    xpath=//dx-text-box[@formcontrolname='PersonalId']//input

${ContactDetails}      xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/mat-tab-header/div/div/div/div[2]
${MobilePhoneNo1}        xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[2]/div/app-contact-details/form/div/div/div/div[1]/div[1]/dx-text-box/div/div[1]/input
${PrimaryContactNo}         xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[2]/div/app-contact-details/form/div/div/div/div[5]/div[1]/dx-select-box/div[1]/div/div[1]/input
${PreferredContactChannel}       xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[2]/div/app-contact-details/form/div/div/div/div[5]/div[2]/dx-select-box/div[1]/div/div[1]/input

${btn_AddressInfo_tab}          xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/mat-tab-header/div/div/div/div[3]
${AddressInfo_HouseNo}          xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[3]/div/app-address-info/form/div/div/div/div[1]/div[1]/dx-text-box/div/div[1]/input
${AddressInfo_Address}         xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[3]/div/app-address-info/form/div/div/div/div[1]/div[2]/dx-text-box/div/div[1]/input
${AddressInfo_RoomNo}      xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[3]/div/app-address-info/form/div/div/div/div[1]/div[3]/dx-text-box/div/div[1]/input
${AddressInfo_Building}      xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[3]/div/app-address-info/form/div/div/div/div[1]/div[4]/dx-text-box/div/div[1]/input
${AddressInfo_Village}      xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[3]/div/app-address-info/form/div/div/div/div[1]/div[5]/dx-text-box/div/div[1]/input
${AddressInfo_Soi}      xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[3]/div/app-address-info/form/div/div/div/div[1]/div[6]/dx-text-box/div/div[1]/input
${AddressInfo_Moo}      xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[3]/div/app-address-info/form/div/div/div/div[1]/div[7]/dx-text-box/div/div[1]/input
${AddressInfo_Road}      xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[3]/div/app-address-info/form/div/div/div/div[1]/div[8]/dx-text-box/div/div[1]/input
${AddressInfo_Province}      xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[3]/div/app-address-info/form/div/div/div/div[1]/div[9]/dx-select-box/div/div/div[1]/input
${AddressInfo_District}      xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[3]/div/app-address-info/form/div/div/div/div[1]/div[10]/dx-select-box/div[1]/div/div[1]/input
${AddressInfo_Sub-Distric}      xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[3]/div/app-address-info/form/div/div/div/div[1]/div[11]/dx-select-box/div[1]/div/div[1]/input
${AddressInfo_ZipCode}      xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[3]/div/app-address-info/form/div/div/div/div[1]/div[12]/dx-select-box/div[1]/div/div[1]/input
${AddressInfo_btn_AddAddress}       xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[3]/div/app-address-info/form/div/div/div/div[2]/div/button[1]

${btn_BillingAddress_tab}          xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/mat-tab-header/div/div/div/div[4]
${BillingAddress_HouseNo}          xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[4]/div/app-billing-address/form/div/div/div/div/div[1]/dx-text-box/div/div[1]/input
${BillingAddress_Address}          xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[4]/div/app-billing-address/form/div/div/div/div/div[2]/dx-text-box/div/div[1]/input
${BillingAddress_RoomNo}           xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[4]/div/app-billing-address/form/div/div/div/div/div[3]/dx-text-box/div/div[1]/input
${BillingAddress_Building}         xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[4]/div/app-billing-address/form/div/div/div/div/div[4]/dx-text-box/div/div[1]/input
${BillingAddress_Village}          xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[4]/div/app-billing-address/form/div/div/div/div/div[5]/dx-text-box/div/div[1]/input
${BillingAddress_Soi}              xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[4]/div/app-billing-address/form/div/div/div/div/div[6]/dx-text-box/div/div[1]/input
${BillingAddress_Moo}              xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[4]/div/app-billing-address/form/div/div/div/div/div[7]/dx-text-box/div/div[1]/input
${BillingAddress_Road}             xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[4]/div/app-billing-address/form/div/div/div/div/div[8]/dx-text-box/div/div[1]/input
${BillingAddress_Province}         xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[4]/div/app-billing-address/form/div/div/div/div/div[9]/dx-text-box/div/div[1]/input
${BillingAddress_District}         xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[4]/div/app-billing-address/form/div/div/div/div/div[10]/dx-text-box/div/div[1]/input
${BillingAddress_Sub-Distric}     xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[4]/div/app-billing-address/form/div/div/div/div/div[11]/dx-text-box/div/div[1]/input
${BillingAddress_ZipCode}         xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[4]/div/app-billing-address/form/div/div/div/div/div[12]/dx-select-box/div[1]/div/div[1]/input

${btn_Attributes_tab}          xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/mat-tab-header/div/div/div/div[5]
${Occupation1}          xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[5]/div/app-attributes/form/div/div/div/div[4]/div[4]/dx-select-box/div[1]/div/div[1]/input
${OccupationRemarks}          xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[5]/div/app-attributes/form/div/div/div/div[4]/div[7]/dx-text-box/div/div[1]/input

${btn_Save_tab}          xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/div/div/app-screen-operations/p/span/dx-button[1]
${Comfirmation_SaveCustomer_Pop-up}         xpath=/html/body/div[2]/div
${btn_SaveCustomer_Yes}         xpath=/html/body/div/div/div[2]/div/div[2]/button[1]

${btn_ProspectLCV}      xpath=/html/body/app-root/app-home/div/main/div[1]/div/div/app-customer-master/div/form/mat-tab-group/div/mat-tab-body[1]/div/app-basic-info/form/div/div/div[2]/div[3]/div/button[3]





