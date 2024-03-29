*** Settings ***
Library    RequestsLibrary
Test Template    接口请求   
# Test Template    post接口请求
Variables    ../python变量.py
 

*** Keywords ***
get接口请求
    [Arguments]    ${url}    ${data}    ${expected}
    Create Session    lemon    http://test.lemonban.com/
    ${res}=    Get Request    lemon    ${url}    params=${data}
    Should Be Equal As Integers    ${expected}    ${res.status_code} 
    Log    ${res.status_code}    
    Log    ${res.json()}
      
    
post接口请求  
    [Arguments]    ${url}    ${data}     ${expected}
    Create Session    lemon    http://test.lemonban.com/
    ${res}=    Post Request    lemon    ${url}    data=${data}
    Should Be Equal As Integers    ${expected}    ${res.status_code} 
    Log    ${res.status_code}    
    Log    ${res.json()}    
接口请求
    [Arguments]    ${method}    ${url}    ${data}     ${expected}    
    Run Keyword If    "${method}"=="post"    post接口请求    url=${url}   data=${data}    expected=${expected} 
    ...    ELSE IF    "${method}"=="get"    get接口请求    url=${url}    data=${data}    expected= ${expected} 
    ...    ELSE    Log    不适用此方法    
    
    
*** Test Cases ***
# 登录接口    futureloan/mvc/api/member/register     ${data1}    200

登录接口    post    futureloan/mvc/api/member/register     ${data1}    200   
登录接口1    get    futureloan/mvc/api/member/register     ${data1}    200
登录接口2   get1    futureloan/mvc/api/member/register     ${data1}    200   


        