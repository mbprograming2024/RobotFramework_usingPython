Library    lib/python3.11/site-packages/SeleniumLibrary/__init__.py
Library    lib/python3.11/site-packages/SeleniumLibrary/__init__.py
*** Settings ***

Library    SeleniumLibrary
*** Variables ***
${URL}    https://www.google.com/webhp?authuser=3
${URL1}    https://www.google.com/webhp?authuser=3

${Browser}    chrome

*** Test Cases ***

Example to open multiple Windoes
    [Documentation]    check multiple Windows
    [Tags]    Test_001
    openurl
    openurl2
    Close Browser

*** Keywords ***

openurl
    Open Browser    ${URL}    ${Browser}
openurl2
    Open Browser    ${URL1}    ${Browser}
    