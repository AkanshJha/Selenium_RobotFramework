*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser_name}     chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
PracticeSelectDropdown
    open browser  ${url}    ${browser_name}
    set selenium speed  1seconds
    maximize browser window
    # we have various keywords available to select value from dropdown -
    # select from list by index
    # select from list by label
    # Select from list select from list by value
    # unselect from list by index
    # unselect from list by label
    # unselect from list by value
    # These all take two parameters
    # <select id="continents" class="input-xlarge" name="continents">
    select from list by label  continents   Asia
    select from list by index  continents   4
    # select from list by value  continents   {value from the options tag}

    # List Box
    # <select id="selenium_commands" class="input-xlarge" multiple="multiple" name="selenium_commands">
    select from list by label  selenium_commands    Browser Commands
    select from list by label  selenium_commands    Wait Commands
    select from list by index  selenium_commands    2
    # select from list by value  selenium_commands   {value from the options tag}

    unselect from list by label  selenium_commands  Browser Commands
    unselect from list by index  selenium_commands  2
    close browser
*** Keywords ***
