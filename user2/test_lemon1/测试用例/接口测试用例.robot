
*** Settings ***
Library    RequestsLibrary
Resource    ../common/封装接口请求.robot




*** Test Cases ***
获取Excel里面的返回值
    ${a}=    从EXCEL中获取的测试用例用到的参数    .//数据//case1.xlsx    verifyUserAuth
    Log    ${a}
    Set Suite Variable    ${a} 

测试
    [Template]    接口请求 
	post    futureloan/mvc/api/member/register     ${a}[0][data]    200   
	get    futureloan/mvc/api/member/register     ${a}[0][data]    200
	get1    futureloan/mvc/api/member/register     ${a}[0][data]    200   
