*** Settings ***
Library    SeleniumLibrary
Resource   loginkeyword.robot
Suite Setup        Open MyBrowser
*** Variables ***    

${username}     practice
${pass}    SuperSecretPassword!

*** Test Cases ***


Test_001
    [Documentation]    Test case to check login action
    [Tags]    Test_001
    LoginTest_rightdata    ${username}      ${pass}
    LoginTest_failcheck    mayur    baviskar
    LoginTest_failcheck    22kar    1234


*** Keywords ***

LoginTest_failcheck 
    [Arguments]    ${username}    ${passed}
    Enter username    ${username} 
    Enter Password    ${passed} 
    Click login
LoginTest_rightdata
    [Arguments]    ${username}    ${passed}
    Enter username    ${username} 
    Enter Password    ${passed} 
    Click login
    Sleep    5seconds
    Click logout