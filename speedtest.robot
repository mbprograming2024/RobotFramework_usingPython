*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${Browser}    chrome
${URL}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
Example to seleniumtimeout
    [Documentation]    This is a basic example test case
    [Tags]  Test_001
    Open Browser    ${URL}    ${Browser}
    Set Selenium Timeout    10 seconds
    Wait Until Page Contains    Automations
    
Example to test speed in selenium script
    [Documentation]    test case is use to check speed of execution in selenium script
    [Tags]    Test_002
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}
    Set Selenium Speed    5seconds
    Open Browser    ${URL}    ${Browser} 
    Input Text    xpath=//input[@id='name']    mayur 
    Input Text    //input[@id='email']    mayur123456@gmail.com  
    Get Text    xpath://*[@id="post-body-1307673142697428135"]/div[1]/label[1]

    ${speed}    Get Selenium Speed
    Log To Console    ${speed}

*** Keywords ***