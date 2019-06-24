*** Settings ***
Library    SeleniumLibrary    
Resource    ../Page/登录页面.robot
Resource    ../Page/主页面.robot
Variables    ../TestData/登录数据.py 
*** Keywords ***
打开浏览器
    Open Browser    http://****/Index/login.html   browser=gc
    Maximize Browser Window
   
打开浏览器并登陆
    打开浏览器
    填写登录名    ${user_info_success[0]["username"]}
    填写密码    ${user_info_success[0]["pwd"]}
    点击登录按钮

打开浏览器登录并进入投标
    打开浏览器并登陆
    点击投标项目
  
关闭浏览器
    Close Browser
 