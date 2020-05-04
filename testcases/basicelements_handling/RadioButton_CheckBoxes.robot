*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browsername}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Practice_RadioButtonAndCheckBoxes
    open browser  ${url}    ${browsername}
    maximize browser window
    set selenium speed  1seconds
    # first approach to select radio button
    click element  xpath=//label[contains(text(),'Female')]/preceding-sibling::input[1]
    # Second approach to select radio button  :   name_of_radio_button      value_to_select
    select radio button  sex    Male
    # <input id="exp-3" name="exp" type="radio" value="4">
    select radio button  exp     4
    # sleep  3
    capture element screenshot  xpath://label[contains(text(),'Female')]/..
    # selecting checkbox- Approach 1
    click element  xpath://label[contains(text(),'Oolong Tea')]/preceding-sibling::input[1]
    click element  xpath://label[contains(text(),'Red Tea')]/preceding-sibling::input[1]
    # select checkbox - Approach 2
    # <input id="tea1" name="BlackTea" type="checkbox" value="Black Tea">
    # select checkbox  name
    # just provide the name, or the xpath can also be passed. check line 37.
    select checkbox  BlackTea
    select checkbox  tool
    # sleep  1
    unselect checkbox  oolongtea
    capture element screenshot  xpath://label[contains(text(),'Oolong Tea')]/..
    click element  xpath://p[contains(text(),'Harmless Addiction')]/input
    # sleep  3
    capture page screenshot     page.png
    unselect checkbox   xpath://p[contains(text(),'Harmless Addiction')]/input
    unselect checkbox   xpath://label[contains(text(),'Red Tea')]/preceding-sibling::input[1]
    capture page screenshot  page2.png

    close browser

*** Keywords ***
