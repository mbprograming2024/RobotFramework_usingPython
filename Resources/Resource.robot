*** Settings ***

Library    SeleniumLibrary



*** Keywords ***

launchBrowser
    [Arguments]    ${appurl}    ${browser}
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    ${Browser}
    Maximize Browser Window
    ${title}=    Get Title
    [Return]    ${title}