*** Settings ***
Library    RequestsLibrary
# Variables    ../python变量.py
Library    ../mylibrary/ExcelLibrary.py    

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


从EXCEL中获取的测试用例用到的参数
    [Arguments]    ${filename}    ${sheetname}   
    ${s}=    Get Cases    filename=${filename}    sheetname=${sheetname}    
    #可以用此方式输出列表中字典的值
    Log    ${s}[0][title]
    [Return]    ${s}
    # #循环遍历大列表
    # :FOR    ${item}    IN  @{s}
    # \    Log    ${item}[case_id]  
    

接口请求1
    [Arguments]    ${method}    ${url}    ${data}     ${expected}
    Run Keyword If    "${method}"=="post"    post接口请求    url=${url}   data=${data}    expected=${expected} 
    ...    ELSE IF    "${method}"=="get"    get接口请求    url=${url}    data=${data}    expected= ${expected} 
    ...    ELSE    Log    不适用此方法    
