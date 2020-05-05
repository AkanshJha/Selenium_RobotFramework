*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser_name}     chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
ImplicitWaitTest
    open browser  ${url}    ${browser_name}
    maximize browser window
    # this implicit wait will be applicable for all the elements
    set selenium implicit wait  5 seconds
    select radio button  Gender     M
    input text  name:FirstName1      Akansh
    input text  name:LastName       Johnson
    input text  name:Email      test.robot@gmail.com
    input password  name:Password   Password12345
    input password  name:ConfirmPassword    Password12345
    # for closing the current window
    close browser
    # for closing all the opened window in the browser.
    # close all browsers