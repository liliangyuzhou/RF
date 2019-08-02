*** Settings ***
Library    SeleniumLibrary    

*** Keywords ***
打开浏览器
    Open Browser    http://120.78.128.25:8765/Index/login.html   gc
    
打开浏览器并最大化
    #注意，关键字可以在内部调用的
    打开浏览器
    Maximize Browser Window 