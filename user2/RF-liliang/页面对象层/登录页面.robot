*** Settings ***
Resource    ../元素定位层/登录页面元素.robot
Library    SeleniumLibrary    

*** Keywords ***
登录功能
    [Arguments]    ${user}    ${passward}
    Wait Until Element Is Visible    ${用户名输入框}    20
    Input Text    ${用户名输入框}    ${user}    
    Input Text    ${密码输入框}    ${passward}    
    Click Element    ${登录按钮}    
    
获取提示信息-表单区域
    Wait Until Element Is Visible    ${提示框}    20
    ${msg}=    Get Text    ${提示框}  
    [Return]    ${msg}
    
    