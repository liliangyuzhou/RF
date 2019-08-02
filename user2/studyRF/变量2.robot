*** Variables ***
${a}    hello,liliang
${dict}    a    1    true    ${a}
    
*** Test Cases ***
#在Test Cases调用在Variables定义的变量
使用变量
    Log    ${a}
    Log    ${dict}    