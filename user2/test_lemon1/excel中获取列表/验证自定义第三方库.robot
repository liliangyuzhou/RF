*** Settings ***    
Library    mylibrary/ExcelLibrary.py  
Resource    common/封装接口请求.robot      
*** Test Cases ***
测试用例
  ${s}=    Get Cases    .//数据//case1.xlsx    verifyUserAuth
  Log    ${s}[0][case_id] 
   
  :FOR    ${item}    IN  @{s}
  # \    Log    ${item} 
  \    Log    ${item}[case_id]  
    
测试commom中的业务关键字
    从EXCEL中获取的测试用例用到的参数    .//..//数据//case1.xlsx    verifyUserAuth
                     
  
测试用例回写
  Write Result    .//case1.xlsx    verifyUserAuth    2    1111    1111
