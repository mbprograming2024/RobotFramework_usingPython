Library    ../lib/python3.11/site-packages/SeleniumLibrary/__init__.py
Library    ../lib/python3.11/site-packages/SeleniumLibrary/__init__.py
*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Account_&_list}    xpath=//*[@id="nav-link-accountList"]
${input_username}    xpath=//input[@id='ap_email'] 
${input_password}    xpath=//*[@id="ap_password"]
${continue_btn}    xpath=//*[@id="continue"]
${signin_btn}    xpath=//*[@id="signInSubmit"]
*** Keywords ***

Enter username
    [Arguments]    ${username}
    Input Text    ${input_username}    ${username}

Enter_password
    [Arguments]    ${password}
    Input Text    ${input_password}     ${password}     