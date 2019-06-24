*** Settings ***
Library    SeleniumLibrary    
*** Keywords ***
进行断言两值相等
    [Arguments]    ${first}    ${second}
    [Documentation]    断言对比两值相当
    Should Be Equal    ${first}    ${second} 
    
进行断言开头匹配
    [Arguments]    ${first}    ${second} 
    [Documentation]    断言对比第一个值开头  
    Should Start With   ${first}    ${second} 
浏览器刷新
    Execute Javascript    window.location.reload();
    Set Selenium Implicit Wait    10
    Sleep    0.2   

