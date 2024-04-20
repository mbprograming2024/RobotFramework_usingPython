Library    lib/python3.11/site-packages/SeleniumLibrary/__init__.py
*** Settings ***
Library    SeleniumLibrary
Resource   Resources/Resource.robot


*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}    chrome



*** Test Cases ***

Example to usrdefine Keywords
    [Documentation]    Example to usrdefine Keywords
    [Tags]    001
    Set Selenium Implicit Wait    30seconds
    ${title1}    launchBrowser    ${url}    ${Browser}
    Log To Console    ${title1}          
    
    Input Text    //input[@placeholder='Username']    Admin   
    
    Input Text    //input[@placeholder='Password']    admin123

    

