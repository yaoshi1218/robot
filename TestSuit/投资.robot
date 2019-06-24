*** Settings ***
Library    SeleniumLibrary  
Resource    ../Page/主页面.robot
Resource    ../Page/项目页面.robot
Resource    ../common/通用功能.robot
Resource    ../common/前置条件.robot
Variables    ../TestData/投资测试数据.py
Suite Setup    打开浏览器登录并进入投标   
Suite Teardown    关闭浏览器  

*** Test Cases ***
投资金额为0
   进行投资    ${error_data[0]["amount"]}
   点击投标按钮
   ${msg}    提示框错误信息
   进行断言两值相等       ${msg}    ${error_data[0]["expected"]}
   点击错误弹窗确认按钮
   浏览器刷新
   
投资金额为-100
   进行投资    ${error_data[1]["amount"]}
   点击投标按钮
   ${msg}    提示框错误信息
   进行断言两值相等       ${msg}    ${error_data[1]["expected"]}
   点击错误弹窗确认按钮
   浏览器刷新
投资金额为110
   进行投资    ${error_data[2]["amount"]}
   点击投标按钮
   ${msg}    提示框错误信息
   进行断言两值相等       ${msg}    ${error_data[2]["expected"]}
   点击错误弹窗确认按钮
   浏览器刷新
投资金额为空
   进行投资    ${error_data[3]["amount"]}
   点击投标按钮
   ${msg}    提示框错误信息
   进行断言两值相等       ${msg}    ${error_data[3]["expected"]}
   点击错误弹窗确认按钮
   浏览器刷新
投资金额为900000
   进行投资    ${error_data[4]["amount"]}
   点击投标按钮
   ${msg}    提示框错误信息
   进行断言两值相等       ${msg}    ${error_data[4]["expected"]}
   点击错误弹窗确认按钮
   浏览器刷新
投资金额为1  
   进行投资    ${error_rule_data[0]["amount"]}
   ${msg}    获取按钮上文本
   进行断言两值相等       ${msg}    ${error_rule_data[0]["expected"]}
   浏览器刷新
 
投资金额为-0.1  
   进行投资    ${error_rule_data[1]["amount"]}
   ${msg}    获取按钮上文本
   进行断言两值相等       ${msg}    ${error_rule_data[1]["expected"]}
   浏览器刷新

投资金额为-1  
   进行投资    ${error_rule_data[2]["amount"]}
   ${msg}    获取按钮上文本
   进行断言两值相等       ${msg}    ${error_rule_data[2]["expected"]}
   浏览器刷新
   
投资金额为1001 
   进行投资    ${error_rule_data[3]["amount"]}
   ${msg}    获取按钮上文本
   进行断言两值相等       ${msg}    ${error_rule_data[3]["expected"]}
   浏览器刷新
   
投资金额为100
   ${投资前余额}    获取余额
   进行投资    ${investment_success_data.amount}
   点击投标按钮
   ${msg}    获取成功投资信息 
   进行断言开头匹配       ${msg}    ${investment_success_data.expected}
   关闭投资成功弹窗
   浏览器刷新
   ${投资后余额}    获取余额 
   投资金额对比    ${investment_success_data.amount}    ${投资前余额}    ${投资后余额} 

  


    