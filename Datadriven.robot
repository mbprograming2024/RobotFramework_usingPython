*** Settings ***
Library        DataDriver    ./test_data.xlsx
Test Template     Login With User And Password

*** Test Cases ***
Login with user ${Username} and password ${Password}    Default    UserData

*** Keywords ***
Login With User And Password
    [Arguments]    ${Username}   ${Password}
    Log Many    ${Username}   ${Password}