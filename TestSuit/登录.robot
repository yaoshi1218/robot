*** Settings ***
Resource    ../common/前置条件.robot
Resource    ../Page/登录页面.robot
Resource    ../Location/登陆界面元素定位.robot
Resource    ../Page/主页面.robot
Resource    ../common/通用功能.robot
Variables    ../TestData/登录数据.py 
Suite Setup    打开浏览器
Suite Teardown    关闭浏览器
*** Test Cases ***
    
登录名为空
    填写登录名   ${user_info_error[0]["username"]}
    填写密码    ${user_info_error[0]["pwd"]}
    点击登录按钮
    ${msg}    获取错误信息
    进行断言两值相等       ${msg}    ${user_info_error[0]["expected"]}
    浏览器刷新
   
手机号码不正确
    填写登录名   ${user_info_error[1]["username"]}
    填写密码    ${user_info_error[1]["pwd"]}
    点击登录按钮
    ${msg}    获取错误信息
    进行断言两值相等       ${msg}    ${user_info_error[1]["expected"]}
    浏览器刷新
    
密码为空
    填写登录名   ${user_info_error[2]["username"]}
    填写密码    ${user_info_error[2]["pwd"]}
    点击登录按钮
    ${msg}    获取错误信息
    进行断言两值相等       ${msg}    ${user_info_error[2]["expected"]}
    浏览器刷新
    
手机号11位且无权限
    填写登录名   ${user_info_authorize[0]["username"]}
    填写密码    ${user_info_authorize[0]["pwd"]}
    点击登录按钮
    ${msg}    获得权限提示的文本
    进行断言两值相等       ${msg}    ${user_info_authorize[0]["expected"]}
    浏览器刷新
    
登录成功
    填写登录名    ${user_info_success[0]["username"]}
    填写密码    ${user_info_success[0]["pwd"]}
    点击登录按钮
    ${msg}    定位昵称 
    进行断言两值相等       ${msg}    ${user_info_success[0]["expected"]}
    log    登录成功


      