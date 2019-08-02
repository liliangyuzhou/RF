*** Settings ***
#在Settings中引入python变量文件，来在Test Cases进行调用
Variables    python变量文件/python变量.py
*** Test Cases ***
#在Settings中引入python变量文件后，我们来使用它其中定义的变量
python文件中变量调用
    Log    ${str1}   
    Log    ${str2}
    Log    ${num} 
    Log    ${bool} 
    Log    ${lista}
    Log    ${dicta} 
   
    
 python文件中的字典和列表的取值
    #列表的取值
    Log    ${lista[1]}
    
    #正确的字典取值方式
    Log    ${dicta["key"]} 
    
    #错误的字典取值方式
    Log    ${dicta.key} 
    

   


  