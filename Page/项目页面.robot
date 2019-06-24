*** Settings ***
Library    SeleniumLibrary    
Resource    ../Location/项目页面元素定位.robot

*** Keywords ***

定位输入框   
    Wait Until Element Is Visible   ${投资输入框}       10    元素未找到   
 
获取余额
    [Return]    ${当前余额}   
    ${当前余额}    Get Element Attribute    ${投资输入框}    data-amount
   
进行投资
    [Arguments]    ${输入金额}
    定位输入框  
    Input Text    ${投资输入框}    ${输入金额}
    
定位投标按钮
    Wait Until Element Is Visible   ${确认投标按钮}       10    元素未找到
    
获取按钮上文本    
    [Return]    ${msg} 
    定位投标按钮  
    ${msg}    Get Text    ${确认投标按钮}
      
点击投标按钮
    定位投标按钮
    Click Element    ${确认投标按钮}    
       

   
获取成功投资信息
    [Return]    ${投标成功的信息}
    Wait Until Element Is Visible   ${投标成功}       10    元素未找到
    ${投标成功的信息}    Get Text    ${投标成功}
    
关闭投资成功弹窗
    Wait Until Element Is Visible   ${关闭成功界面}       10    元素未找到
    Click Element    ${关闭成功界面}   

提示框错误信息
    [Return]    ${msg}
    Wait Until Element Is Visible   ${提示框错误信息}       10    元素未找到
    ${msg}    Get Text    ${提示框错误信息}

点击错误弹窗确认按钮
    Wait Until Element Is Visible   ${提示框确认按钮}       10    元素未找到
    Click Element    ${提示框确认按钮}    
    
    
两数求差
    [Return]    ${res}  
    [Arguments]    ${第一个数}    ${第二个数}
    
    ${res}=    Evaluate    ${第一个数}-${第二个数}
    # Should Be Equal As Integers    ${res}    300 
    
乘以100
    [Arguments]    ${数字}
    [Return]    ${res}
    ${res}=    Evaluate    ${数字}*100
    
投资金额对比
    [Arguments]    ${投资金额}    ${投资前余额}    ${投资后余额}
    ${投资前余额*100}    乘以100    ${投资前余额}
    ${投资后余额*100}    乘以100    ${投资后余额}
    ${投资金额*100}    乘以100    ${投资金额}
    ${计算投资后的余额}    两数求差    ${投资前余额*100}     ${投资金额*100} 
    Should Be Equal As Integers    ${计算投资后的余额}     ${投资后余额*100}         
    