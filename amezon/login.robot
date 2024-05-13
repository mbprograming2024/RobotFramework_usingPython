***settings***
Library    SeleniumLibrary
Resource   Locator_login.resource


*** Variables ***
${username}    give your username
${password}    givepassword here
${baseurl}    https://www.amazon.in/
${expected_title}    Online Shopping site in India: Shop Online for Mobiles, Books, Watches, Shoes and More - Amazon.in


*** Test Cases ***

Check amezon base url
    Open Browser    ${baseurl}    chrome  
    ${pagetitle}    Get Title      
    Log To Console    ${pagetitle}

Test Login function of amezon Webpage
    Open Browser    ${baseurl}    chrome
    Click Element    ${Account_&_list}
    Enter username    ${username}
    Click Element    ${continue_btn}
    Enter_password    ${password}
    Click Element    ${signin_btn} 
    ${pagetitle}    Get Title  
    Log To Console    ${pagetitle}
    # Run Keyword If    ${expected_title}==${pagetitle}    Log    title verified login successfully 

*** Keywords ***
