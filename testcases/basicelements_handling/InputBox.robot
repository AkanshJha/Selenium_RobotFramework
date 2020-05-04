*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https:\\nopcommerce.com
${expectedTitle}    Free and open-source eCommerce platform. ASP.NET based shopping cart. - nopCommerce

*** Test Cases ***
Testing-InputBOX
    open browser  ${url}    ${browser}
    maximize browser window
    title should be  ${expectedtitle}
    mouse over  class:userlink
    click element  class:ico-login
    sleep  3
    ${"username_txt"}   set variable  id:Username
    ${"password_txt"}   set variable  id:Password
    element should be enabled  ${"password_txt"}
    element should be visible  ${"password_txt"}
    clear element text  ${"username_txt"}
    input text  ${"username_txt"}     akanshjha
    clear element text  ${"password_txt"}
    input password  ${"password_txt"}     password
    click button  xpath=//input[@value='Log in']
    sleep  3
    capture page screenshot  file.png
    close browser
*** Keywords ***
