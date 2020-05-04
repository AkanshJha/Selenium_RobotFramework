*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https:\\www.amazon.in\
*** Test Cases ***
Login Test
    open browser    ${url}   ${browser}
    maximize browser window
    LoginToAmazon
    close browser

*** Keywords ***
LoginToAmazon
    mouse over  xpath://span[text()='Account & Lists']
    click element  xpath://span[text()='Account & Lists']
    input text  name:email  akansh.jha@gmail.com
    click button  id:continue
    sleep  2
    input password  name:password   amazonpass
    click button  id:signInSubmit
    sleep  3
    capture page screenshot  login.png