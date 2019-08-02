*** Keywords ***
流程关键字-求和
    [Arguments]    ${num1}    ${num2}    ${expected}
    ${sum}    Evaluate    ${num1}+${num2}    
    Should Be Equal As Numbers    ${sum}    ${expected}   
    
*** Settings ***
Test Template    流程关键字-求和 

*** Test Cases ***
小数求和    0.8    0.4    1.2 
整数求和    123    111    234   
负数求和    -1    -10    -11   
随机求和    100    -20    80