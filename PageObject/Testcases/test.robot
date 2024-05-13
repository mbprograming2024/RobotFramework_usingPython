*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Loginpage.robot



Test Setup    open mybrowser    ${urL}     ${Browser}  
Test Teardown    Close Browser


*** Variables ***
${urL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}    chrome
${username}    Admin
${password}    admin123

*** Test Cases *** 
Login Test case
    [Tags]    Sanity
    Log To Console    This is login test 
    Sleep    15 seconds
    Enter username    ${username}   
    Enter Password    ${password} 
    Click Login button 

Login Test case
    [Tags]    Sanity
    Log To Console    This is login test 
    Sleep    15 seconds
    Enter username    ${username}   
    Enter Password    ${password} 
    Click Login button 


*** Keywords ***