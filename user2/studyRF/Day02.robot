*** Settings ***
Resource    资源文件.robot

*** Test Cases ***
两数求和
    ${res}    Evaluate    100+200   
    Should Be Equal As Integers    ${res}    300 
    Log    测试成功！   
    
使用用户关键字-两数求和    
    求和并对比    100    200    300
    求和并对比    100    200    150
    
使用资源文件用户关键字-求差
    求差并对比    100    50    50
    求差并对比    100    20    80

*** Keywords ***
求和并对比
    #参数
    [Arguments]    ${a}    ${b}=0    ${expected}=0
    #封装的关键字描述，此处可以换行，换行后会自动出现单个点，表示还是Documentation模块区域
    [Documentation]        两个数相加，并与期望结果对比
    ...    hello，RF
    #正式代码
    ${res}=    Evaluate    ${a}+${b}    
    Should Be Equal As Integers    ${res}    ${expected}  
    #返回值，此处不是代码，返回值可以随便放，放在最前面也可以
    [Return]    ${res}  
    

    
