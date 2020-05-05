*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}   http://testautomationpractice.blogspot.com/

*** Test Cases ***
HandleAlertTest
    open browser  ${url}   ${browser}
    maximize browser window
    set selenium speed  1 seconds
    # select frame  index:0     # invalid
    select frame  xpath://*[@id="frame-one1434677811"]
    unselect frame      # to switch to default content

    click button  xpath://button[text()='Click Me']     # Alert button
    close browser