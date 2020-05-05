*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser_name}     chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
SeleniumSpeed
    ${selenium_speed}   get selenium speed
    log to console  ${selenium_speed}
    open browser  ${url}    ${browser_name}
    set selenium speed  1seconds
    maximize browser window

    select radio button  Gender     M
    input text  name:FirstName      Akansh
    input text  name:LastName       Johnson
    input text  name:Email      test.robot@gmail.com
    input password  name:Password   Password12345
    input password  name:ConfirmPassword    Password12345
    ${selenium_speed}   get selenium speed
    log to console  ${selenium_speed}


    close browser