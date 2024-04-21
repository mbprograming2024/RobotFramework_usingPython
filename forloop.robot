
*** Settings ***

*** Test Cases ***

*** Test Cases ***
# Example Test
#     FOR    ${index}    IN RANGE    1    5
#         Log To Console    Index: ${index}
#     END

# forloop2
#     FOR    ${i}    IN    1 2 3 4 5 6 7 8 9
#     Log To Console    ${i}
#     END


# forloop3
#     FOR    ${i}    IN    1    2    3    4    5    6    7    8    9
#     Log To Console    ${i}
#     END

# Forloop4
#     @{LIST}    Create List    mayur    pralhad     baviskar     shital     rushi     aasha
#     FOR    ${element}    IN    @{LIST}
#         Log To Console    ${element}
        
#     END

# Forloop4
#     @{LIST}    Create List    mayur    pralhad     baviskar     shital     rushi     aasha
#     FOR    ${element}    IN    @{LIST}
#         ${ele}    Set Variable    ${element}
#         Log To Console    ${ele.upper()}
#         # Log To Console    ${element}
#         Exit For Loop If    '${ele.upper()}' == 'MAYUR'       
#     END