*** Settings ***
Library    SeleniumLibrary    
Resource    ../Location/登陆界面元素定位.robot

*** Keywords ***
获取错误信息    
    [Return]    ${msg}
    Wait Until Element Is Visible    ${获取错误信息}     10    元素未找到 
    ${msg}    Get Text    ${获取错误信息}
    
获得权限提示的文本
    [Return]    ${msg}
    Wait Until Element Is Visible   ${获取弹窗信息}      10    元素未找到
    ${msg}    Get Text    ${获取弹窗信息}  
    
填写登录名
    [Arguments]    ${用户名}
    Wait Until Element Is Visible   ${用户输入框}       10    元素未找到
    Input Text    ${用户输入框}   ${用户名}
  
填写密码   
    [Arguments]    ${密码}
    Input Text    ${密码输入框}    ${密码}

点击登录按钮
    Wait Until Element Is Visible   ${登录按钮}       10    元素未找到
    Click Element    ${登录按钮}   
    
 
    
 