*** Settings ***
Library    SeleniumLibrary 
Library    lib/python3.11/site-packages/robot/libraries/XML.py
Library    lib/python3.11/site-packages/robot/__init__.py

*** Variables ***



*** Test Cases ***

Test case 1
    [Documentation]    Basic test case in robot framework
    [Tags]    Tese case name for markers
    Open Browser    https://www.globalsqa.com/cheatsheets/    chrome
    Maximize Browser Window
    # Sleep    15 seconds
    # Set Selenium Implicit Wait    5seconds
    Set Selenium Speed    5seconds
    Mouse Over    //a[@class='no_border'][contains(text(),'Tester’s Hub')]
    Mouse Over    //span[normalize-space()='Demo Testing Site']
    Get WebElement    //span[normalize-space()='Demo Testing Site']
    @{hovered_elements}=    Get WebElements    xpath=//*[@id="menu-item-2822"]/div/ul/li[1]/div/ul/li
    FOR    ${hovered_element}    IN    @{hovered_elements}
    Log To Console    ${hovered_element.text}    # Print the text of the hovered element
    Run Keyword If    '${hovered_element.text}' == 'DropDown Menu'    Click Element    ${hovered_element}       
    END       
    Close Browser
    # ${Tester’s_Hub}    Get Element    
    # Get Element Text    ${Tester’s_Hub}
    # Log To Console   {Tester’s_Hub}




*** Keywords ***