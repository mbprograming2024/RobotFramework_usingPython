*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://practice.expandtesting.com/login  
${Browser}    chrome


*** Keywords ***

Open MyBrowser
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window

Enter username
    [Arguments]    ${username}
    Input Text    //input[@id='username']    ${username}

Enter Password
    [Arguments]    ${pass}
    Input Text    //input[@id='password']    ${pass}

Click login
    Click Element    //button[@type='submit']

Click logout
    Click Element    //i[@class='icon-2x icon-signout']