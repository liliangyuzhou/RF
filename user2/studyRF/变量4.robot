
*** Variables ***

${a}    1

*** Test Cases ***
关键字创建变量+取值
    ${hi}    Set Variable    hello,world!
    ${hi-2}    Set Variable    I Said:${hi}
    Set Suite Variable    ${hi-2}    
    
# 使用上一用例变量
    # Log    ${hi-2}    
    
 
    