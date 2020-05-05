*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser_name}     chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
TimoutsTest
    open browser  ${url}    ${browser_name}
    ${timeout}=  get selenium timeout
    log to console  ${timeout}
    maximize browser window
    # wait until page contains {some certains text}, By default, it will wait for 5 seconds.
    # If you want to change this default time, we will use 'set selenium timeout'
    set selenium timeout  10 seconds
    wait until page contains  Register
    # for above condition, it will pass.
    # lets checl for next one, It should fail. Error will be 'Text 'Registration' did not appear in 5 seconds.' which is default selenium timeout.
    # If you set the selenium timout, it will show that value in the error.
    wait until page contains  Registration
    select radio button  Gender     M
    input text  name:FirstName      Akansh
    input text  name:LastName       Johnson
    input text  name:Email      test.robot@gmail.com
    input password  name:Password   Password12345
    input password  name:ConfirmPassword    Password12345


    close browser