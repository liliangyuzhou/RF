*** Test Cases ***
创建变量
    ${o}    Set Variable    hello,world!
    ${p}    Set Variable    I said:${o}
    @{mylist}    Create List  a    1    b    ${p}    true
    # Log    @{mylist}    
    Log    ${mylist}    
    #创建字典有两种方式：
    #方式1
    &{dict}    Create Dictionary    key    value    key1    value1
    #方式2
    &{dict1}    Create Dictionary    key=value    key1=value1
    
    #列表取值
    Log    ${mylist[0]}    
    # 字典取值
    Log    ${dict.key}   
    
