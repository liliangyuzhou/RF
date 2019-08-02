*** Settings ***
Library    SeleniumLibrary
Resource    ../页面对象层/登录页面.robot
Resource    前置后置处理条件.robot
# Test Setup    Open Browser    http://120.78.128.25:8765/Index/login.html     gc
Test Setup    打开浏览器并最大化
Test Teardown    Close Browser  
# Force Tags  smoke    back    self  
# Default Tags     smoke

*** Test Cases ***
用例1-正常登录
    [Tags]    smoke
    登录功能    18684720533    python    

用例2-异常登录-密码为空
    登录功能    18684720533    ${EMPTY}
    获取提示信息-表单区域 
    
用例3-异常登录-手机号为空
    登录功能    ${EMPTY}    123456
    获取提示信息-表单区域
    
用例4-注定失败
    Should Be Equal As Integers    12    13    