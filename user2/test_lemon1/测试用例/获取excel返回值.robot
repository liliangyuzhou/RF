*** Settings ***
Resource    ../common/封装接口请求.robot
Library    ../mylibrary/ExcelLibrary.py      
*** Test Cases ***
获取Excel里面的返回值
    ${a}=    从EXCEL中获取的测试用例用到的参数    .//数据//case1.xlsx    verifyUserAuth
    Log    ${a}                     
