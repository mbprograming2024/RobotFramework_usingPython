*** Settings ***
Variables    ../Locators/Admin.py
Library    SeleniumLibrary

*** Keywords ***

Click on Admin    
    Click Element    ${btn_Admin}

Click On Add
    Click Element    ${btn_ADD}   

Select Role
    Select From List By Label    user_Role    Admin

