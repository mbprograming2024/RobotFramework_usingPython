*** Settings ***

Library    SeleniumLibrary
Library    lib/python3.11/site-packages/robot/libraries/XML.py

*** Variables ***
${Browser}    chrome
${URL}    https://testautomationpractice.blogspot.com/
${url2}    https://demo.automationtesting.in/Register.html
${guru99}    https://demo.guru99.com/test/ajax.html

*** Test Cases ***
# test case for Alert Handling
#     [Documentation]    Handle Alert boxces
#     [Tags]    Test_006
#     Open Browser    ${URL}    ${Browser}  
#     Set Selenium Implicit Wait    5seconds
#     Click Element    //button[@onclick='myFunctionAlert()']
#     Handle Alert    Accept  


# Handle confirm Box
#     [Documentation]    Handle confirm boxces
#     [Tags]    Test_008
#     Open Browser    ${URL}    ${Browser} 
#     Click Element    //button[@onclick='myFunctionConfirm()'] 
#     # Handle Alert    Accept
#     # Handle Alert    Dismiss
#     # Handle Alert    Leave
#     Alert Should Be Present    Press a button!

# Test cases to handle prompt
#     [Documentation]    Handle Alert boxces
#     [Tags]    Test_007
#     Set Selenium Speed    10seconds
#     Open Browser    ${URL}    ${Browser}  
#     Click Element    //button[@onclick='myFunctionPrompt()']
#     Input Text Into Alert    Hello mayur
#     # Sleep    10seconds
#     Handle Alert    Accept   

# Test Drag and Drop Operation
#     [Documentation]    this test case check drag and drop Operation
#     [Tags]    test_010
#     Open Browser    https://testautomationpractice.blogspot.com/    chrome   
#     Maximize Browser Window
#     ${ele1}    Set Variable    //p[normalize-space()='Drag me to my target']
#     ${ele2}    Set Variable    //div[@id='droppable']
#     Drag And Drop    ${ele1}    ${ele2}
#     sleep    20seconds


# Example to check iframe
#     [Documentation]    example to check iframe
#     [Tags]    Test_002
#     Open Browser    https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_iframe   chrome   
#     Maximize Browser Window
#     Select Frame    iframeResult
#     ${ele3}    Get Text    //h1[normalize-space()='The iframe element']
#     Log To Console   ${ele3} 
#     Set Selenium Speed    90seconds
#     # Unselect Frame
#     Select Frame    //iframe[@title='W3Schools Free Online Web Tutorials']
#     # 
#     ${ele}    Get Text  //*[@id="subtopnav"]/a[1]
#     Log To Console    ${ele}
# example to check tab handling
#     [Documentation]    example to check multiple windoes opening 
#     [Tags]    test_008
#     Open Browser    https://www.globalsqa.com/cheatsheets/    chrome
#     Open Browser    ${url2}    chrome     

#     Switch Browser    1  
#     ${title}=    Get Title
#     Log To Console    ${title}

#     Switch Browser    2
#     ${title2}=    Get Title
#     Log To Console    ${title2}

#     Sleep    10

# Browser realated commads
#     [Documentation]    This test case is use to check browser command
#     [Tags]    Test__15
#     Open Browser    https://www.google.co.in/    chrome
#     ${loc}=    Get Location
#     Log To Console    ${loc}

#     Go To    url
#     ${loc}=    Get Location
#     Log To Console    ${loc}


#     Go Back
#     ${loc}=    Get Location
#     Log To Console    ${loc}


# Cpature Screen shot
#     [Documentation]      element and page screen shot demo
#     [Tags]    test--555
    
#     Open Browser    https://demo.automationtesting.in/Register.html    chrome    
#     Maximize Browser Window
#     Capture Element Screenshot    //img[@id='imagetrgt']    logo.png

#     Capture Page Screenshot    page.png 

Example for right click and double click
    [Documentation]      element and page screen shot demo
    [Tags]    test--555  
    Open Browser    https://demo.guru99.com/test/simple_context_menu.html   chrome

    Double Click Element    //*[@id="authentication"]/button
    Sleep    5seconds
    
    Open Context Menu    //*[@id="authentication"]/span     
    Sleep    3seconds 

    




*** Keywords ***