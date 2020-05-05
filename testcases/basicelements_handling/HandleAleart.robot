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
    click button  xpath://button[text()='Click Me']

    handle alert  accept

    click button  xpath://button[text()='Click Me']

    handle alert  dismiss
    # 'dismiss alert', this is a deprecated keyword.

    # to keep the Alert window open
    click button  xpath://button[text()='Click Me']
    handle alert  leave
    alert should be present  Press a button!    #after verification, it closes the alert
    close browser