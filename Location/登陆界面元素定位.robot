*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${用户输入框}     xpath://input[@name='phone']

${密码输入框}    xpath://input[@name='password']

${记住账号定位}    //input[@name='remember_me']

${登录按钮}    //button[contains(text(),'登录')]
 
${获取错误信息}    css:.form-error-info
 
${获取弹窗信息}    css:.layui-layer-content
 