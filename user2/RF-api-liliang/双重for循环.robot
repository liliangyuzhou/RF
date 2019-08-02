*** Keywords ***   
内层for循环
    :FOR    ${it}    IN    @{Lista}
    \    Log    ${it}      
     
*** Variables ***
@{Lista}    1    2    fish    mongo   
  
*** Test Cases ***   
for循环
    @{list}=    Create List    12    14    english    True
    :FOR    ${item}    IN    @{list}
    \    内层for循环
    \    Log    ${item}    
    \    Exit For Loop If    "${item}"=="english"
    
       
    



   