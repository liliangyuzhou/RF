*** Settings ***
Library    DateTime 



*** Test Cases ***
这是一个测试
    Log    message=凯峰    
    
用例1-使用引入标准库中的关键字-带返回值的用法
    ${time}=    Get Current Date    UTC
    
用例2-使用内置库中的关键字
    Should Be Equal    100    100   
    Log    pass     
    
用例3-异常处理的关键字
    ${res}    Run Keyword And Return Status    Should Be Equal    22    22        
    Run Keyword If   ${res}    Log    比对成功！
    ...   ELSE   Log    比对失败！            
    