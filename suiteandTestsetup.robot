*** Settings ***
Suite Setup    Log To Console    This is test suite started
Suite Teardown    Log To Console    This is test suit ended 

Test Setup    Log To Console    Befor test case
Test Teardown    Log To Console    After Test case 

*** Variables ***


*** Test Cases ***
TC1
    Log To Console    This is test case 1

TC2
    Log To Console    This is test case 2

TC3
    Log To Console    This is test case 3

TC4
    Log To Console    This is test case 4



*** Keywords ***