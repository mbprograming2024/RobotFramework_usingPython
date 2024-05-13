*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/LoginPOM.py

*** Keywords ***

open mybrowser
    [Arguments]    ${url}    ${Browser}
    Open Browser    ${url}    ${Browser}        

Enter username
    [Arguments]    ${username}
    Input Text    ${txt_Loginusername}    ${username}
    

Enter password
    [Arguments]    ${password}
    Input Text    ${txt_Loginpassword}    ${password}   

Click Login button   
    click Element    ${btn_login}    

Dashbord element should be present
    # [Arguments]     ${}
    Element Should Be Visible    ${txt_Dashboard}