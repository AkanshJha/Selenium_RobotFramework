*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser_name}     chrome
${url}

*** Test Cases ***
PracticeSelectDropdown
    open browser  ${url}    ${browser_name}
*** Keywords ***
