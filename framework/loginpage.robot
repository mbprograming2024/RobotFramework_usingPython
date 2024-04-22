*** Settings ***
Library    SeleniumLibrary
Resource   loginkeyword.robot

*** Variables ***    

${username}     practice
${pass}    SuperSecretPassword!

*** Test Cases ***


Test_001
    [Documentation]    Test case to check login action
    [Tags]    Test_001
    LoginTest    ${username}      ${pass}
    LoginTest    mayur    baviskar
    LoginTest    22kar    1234


*** Keywords ***

LoginTest 
    [Arguments]    ${username}    ${passed}
    Open MyBrowser
    Enter username    ${username} 
    Enter Password    ${passed} 
    Click login