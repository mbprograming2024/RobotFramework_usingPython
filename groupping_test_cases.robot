*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Test Cases ***

Login Test case
    [Tags]    Sanity
    Log To Console    login test case 


User Register Test case
    [Tags]    Basic
    Log To Console    User Register Test case

user Setting Test case
    [Tags]    Sanity
    Log To Console    user Setting Test case

Logout Test case
    [Tags]    Regression
    Log To Console    Logout Test case


*** Keywords ***


# # to execute only sanity test case 
# robot -i Sanity groupping_test_cases.robot

# to excute testcase other than sanity
# robot -e Sanity groupping_test_cases.robot 

# # to execute basic and sanity test case 
# robot -i Sanity -i Basic groupping_test_cases.robot

# # to execute only Regression test case 
# robot -i Regression  groupping_test_cases.robot