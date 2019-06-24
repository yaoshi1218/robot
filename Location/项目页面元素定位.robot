*** Settings ***
Library    SeleniumLibrary    
*** Variables ***
${投资输入框}    //input[@data-url='/Invest/invest']

${确认投标按钮}    //div[@class='right']//button

${投标成功}    //div[@class='layui-layer-content']//div[contains(text(),'投标成功')]
 
${关闭成功界面}    //div[@class='layui-layer-content']//div[@class='close_pop']/img

${提示框错误信息}    //div[@class='text-center']

${提示框确认按钮}    //div[@class='layui-layer-btn']//a
