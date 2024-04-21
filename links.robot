*** Settings ***
Library    SeleniumLibrary
Library    lib/python3.11/site-packages/robot/libraries/XML.py

*** Variables ***
${url}    https://www.tutorialspoint.com/selenium/practice/nestedframes.php
${Browser}    chrome




*** Test Cases ***

find number of links on webpage
    [Documentation]    this example to check number of links on webpage
    [Tags]    Test_001
    Open Browser    ${url}    ${Browser}
    ${list}=    Get Element Count  //a        
    Log To Console    ${list}

    FOR    ${i}    IN RANGE    1    ${list}+1
    ${link}=    Get Text    xpath:(//a)[${i}]
    Log To Console    ${link}   
    END       


*** Test Cases ***
Count Links on Webpage
    [Documentation]    This example checks the number of links on a webpage and handles null links.
    [Tags]    Test_001
    Open Browser    ${url}    ${Browser}
    ${link_count}=    Get Element Count    //a
    Log To Console    Number of links found: ${link_count}

    FOR    ${index}    IN RANGE    1    ${link_count+1}
        ${link}=    Get Text    xpath=(//a)[${index}]
        ${link}=    Run Keyword If    "${link}" == ""    Set Variable    Null
        Log To Console    Link ${index}: ${link}
    END



*** Keywords ***

