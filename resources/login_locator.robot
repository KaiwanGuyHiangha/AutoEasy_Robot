*** Variables ***
${ddl_language}        id=select2-SelectedLanguageCode-container
${txt_username}        id=UserName
${txt_password}        id=Password
${ddl_branch}          xpath=//span[@id='select2-SelectedBranchId-container']
${txt_branch_search}   css=input.select2-search__field
${branch_first}        xpath=(//ul[@class='select2-results__options']//li)[1]
${btn_login}           xpath=//button[@type='submit']
${btn_ok}              xpath=//*[@class="btn btn-sm btn-outline-dark"]
${popup_confirm}       id=modal-custom-confirmation
${btn_yes}             id=btnYes