*** Settings ***
Library    RequestsLibrary
    
*** Test Cases ***
发送一个请求-注册
    #1.创建一个会话,alias这个参数，自己随便传值，后面步骤还会使用到，这里的url指的是ip+端口(或者完整的域名），不包括ip+端口后面的接口地址
    Create Session    lemon    http://test.lemonban.com/
    #2.发送get或者post或者put等请求，这里的参数url指的是除过ip+端口之外，剩余的接口地址
    #请求数据，一般都写在字典中
    &{data}=    Create Dictionary    mobilephone    18211562134    pwd    1234567    
    ${response}=    Get Request    lemon    futureloan/mvc/api/member/register    params=${data}
    #3.相应结果--这里直接使用的python中requests库中的response对象
    Log    ${response.text}    
    Log    ${response.status_code}
    Log    ${response.json()}  
    