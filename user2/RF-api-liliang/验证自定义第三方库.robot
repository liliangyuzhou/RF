*** Settings ***    
Library    mylibrary/ExcelLibrary.py        
*** Test Cases ***
测试用例
  ${s}=    Get Cases    .//case1.xlsx    verifyUserAuth
  Log    ${s}[0][case_id] 
   
  :FOR    ${item}    IN  @{s}
  # \    Log    ${item} 
  \    Log    ${item}[case_id]                   
  
测试用例回写
  Write Result    .//case1.xlsx    verifyUserAuth    2    1111    1111
