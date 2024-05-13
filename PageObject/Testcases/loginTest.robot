*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Loginpage.robot
Resource    ../Keywords/AdminUserManagement.robot

# Test Setup     open mybrowser    ${url}    ${Browser}
# Test Teardown    Close Browser  

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login   
${Browser}    chrome
${username}    Admin
${password}    admin123

*** Test Cases ***

Test case login check
    [Tags]    Sanity 
    open mybrowser    ${url}    ${Browser}
    # Set Selenium Implicit Wait    10seconds
    Set Selenium Speed    30seconds
    Enter username    ${username}    
    # Enter password    ${password}  
    # click Login button 
    # Dashbord element should be present


# Test case for Registation check
#     [Tags]    Sanity
#     Set Selenium Speed    5seconds
#     Enter username    ${username}
#     Enter password    ${password}  
#     click Login button 
#     Click on Admin
#     Click On Add
#     Select Role
    

*** Keywords ***
