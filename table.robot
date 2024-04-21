*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${Browser}    chrome



*** Test Cases ***
test case for table data checking
    [Documentation]    this is ecample for table handling   
    [Tags]    TEST_006
    Open Browser    ${url}    ${Browser}
    ${rowcount}=    Get Element Count    //table[@name='BookTable']/tbody/tr
    ${colcount}=    Get Element Count    //table[@name='BookTable']/tbody/tr/th
    Log To Console    numberrow:${rowcount}
    Log To Console    numberclos:${colcount}

    ${Data}=    Get Text    //table[@name='BookTable']/tbody/tr[5]/td[3]

    Log To Console    ${Data}


    Table Cell Should Contain    locator    row    column    expected    
    Table Column Should Contain    locator    column    expected
    Table Header Should Contain    locator    expected
    Table Row Should Contain    locator    row    expected
*** Keywords ***





# //table[@name='BookTable']