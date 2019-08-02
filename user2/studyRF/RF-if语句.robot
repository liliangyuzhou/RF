*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***


# Run Keyword If    判断条件    其他关键字
# ...    ELSE If    判断条件    其他关键字  
# ...    ELSE If    判断条件    其他关键字

RF中的IF语句
    Run Keyword If    "str1"=="str1"   Log    we are equal        