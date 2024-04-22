*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Loginpage.robot


*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    
${Browser}    chrome
${username}    Admin
${password}    admin123

*** Test Cases ***

Test case login check

    [Tags]    Sanity 
    Set Selenium Implicit Wait    10seconds
    open mybrowser    ${url}    ${Browser}
    Enter username    ${username}
    Enter password    ${password}  
    click Login button 

*** Keywords ***
