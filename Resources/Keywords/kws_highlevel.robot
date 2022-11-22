*** Settings ***
Documentation  Steps of tests
Resource  ${ROOT}/Resources/Main.robot

*** Variables ***

*** Keywords ***

# GENERAL KEYWORDS OPEN/CLOSE BROWSERS
Open Application
    [Arguments]  ${URL_Base}  ${BROWSER}
    [Documentation]  Test setup to open browser
    Open Browser  ${URL_Base}  ${BROWSER}  options=${OPTION_LOG}

Close Application
    Close Browser

