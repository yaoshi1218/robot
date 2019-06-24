*** Settings ***
Library    SeleniumLibrary    
Resource    ../Location/主页面元素定位.robot  

*** Keywords ***
定位昵称   
    [Return]    ${msg}
    Wait Until Element Is Visible    ${用户昵称}     20    元素未找到 
    ${msg}    Get Text    ${用户昵称}
        
点击投标项目
    Wait Until Element Is Visible   ${投标的名称}       20    元素未找到
    Click Element    ${投标的名称}  
    
1
    Click Element    ${1}  