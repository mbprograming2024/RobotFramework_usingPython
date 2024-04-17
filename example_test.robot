*** Settings ***
Library    SeleniumLibrary
Library    lib/python3.11/site-packages/robot/libraries/XML.py

*** variables ***
${Browser}    chrome   
${URL}    https://testautomationpractice.blogspot.com/      

*** Test Cases ***
# Example openurl and write in inputbox
#     [Documentation]    This is a basic example test case
#     [Tags]  Test_001
#     Open Browser    https://www.google.com    ${Browser}
#     Maximize Browser Window
#     Input Text    id=APjFqb    Robot Framework
#     Click Button    xpath=//div[@class='FPdoLc lJ9FBc']//input[@name='btnK']
#     Page Should Contain    Robot Framework
#     Close Browser


# Example inputbox operation
#     [Documentation]    input box operation eneter text,clear text,check Enabled
#     Open Browser    ${URL}   ${Browser}
#     Input Text    id:name    MAYUR
#     Input Text    id:email   Baviskar
#     Set Selenium Speed    5seconds
#     Clear Element Text    id:name 
#     ${element}    Set Variable    id:phone
#     Input Text    ${element}    7020611623
#     Element Should Be Enabled    ${element}
    # Element Should Be Disabled    ${element}   # element is enable this statement fails the test

# Teating Radi Button and Check Boxes
#     [Documentation]    work with Radio Button
#     [Tags]    Test_003
#     #for implicit wait
#     # Set Selenium Implicit Wait    10seconds    
#     # this wait exactly wait for 10 second for each and every element
#     # Set Selenium Speed    10seconds
#     #call userdefine keyword here 
#     openurl
#     Select Radio Button    gender    male  
#     Select Radio Button    gender    female
#     Select Checkbox        id:sunday
#     Select Checkbox        xpath://input[@id='monday']
#     Set Selenium Speed    10seconds
#     Unselect Checkbox    id:sunday   

#     ${Checkboxes}    Get Element Count   //*[@class="form-check-input"][@type='checkbox']
#     Log    total ${Checkboxes} present on webpage



# Example To work with dropdown
#     [Documentation]    this example demostrate the drop down handling
#     [Tags]    Test_004 
#     openurl
#     # Get Selected List By Lable    id:country    India
#     # Get Selected List Label    id:country      
#     # SeleniumLibrary.Get Selected List Labels
#     set Selenium Implicit Wait    10seconds
#     # Select From List By Value    id=country    india 
#     # Select From List By Label    id=country    France
#     Select From List By Index    id=country    5
#     Set Selenium Speed    15seconds
#     Select From List By Index    id=country    3


# Example to demostrate multiple element selection from selection box
#     [Documentation]    example for multiple selection    
#     [Tags]    Test_005
#     Open Browser    https://www.tutorialspoint.com/selenium/practice/select-menu.php    chrome
#     Set Selenium Implicit Wait    20seconds
#     # Set Selenium Speed    15seconds
#     Click Element    xpath=//span[contains(@class,'mbsc-textfield mbsc-textfield-outline mbsc-select mbsc-textfield-stacked mbsc-textfield-outline-stacked mbsc-textarea')]
#     # Set Selenium Speed    15seconds
#     Click Element  xpath=//div[normalize-space()='Books']
#     Click Element  xpath=//div[normalize-space()='Electronics & Computers']


#     # Select From List By Label     //select[@id='inputGroupSelect03']    Dr.

#     Click Element  xpath=//div[normalize-space()='Books']
#     Click Element  xpath=//div[normalize-space()='Electronics & Computers']
    
#     Close Browser
# Example Drag and Drop operation
#     [Documentation]    Drag and D
    

*** Keywords ***

openurl
    Open Browser    ${URL}   ${Browser} 

    
    


   


