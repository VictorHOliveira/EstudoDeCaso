*** Settings ***
Documentation  Customized keywords in python
Resource  ${ROOT}/Resources/Main.robot

*** Variables ***
Click
    [Arguments]    ${locator}
    [Documentation]    Waits for an element identified by "locator" and clicks on it.
    ...
    ...    *Input Arguments:*
    ...    | *Name*    | *Description* |
    ...    | locator   | xpath of the element to click |
    ...
    ...    *cap eng. Expertise center*
    ...
    Wait Until Page Contains Element    ${locator}   
    Click Element    ${locator}

Write
    [Arguments]    ${locator}    ${text}
    [Documentation]    Waits for an element identified by "locator" and writes "text" on it.
    ...
    ...    *Input Arguments:*
    ...    | *Name*    | *Description* |
    ...    | locator   | xpath of the element to write in |
    ...    | text      | text to write |
    ...
    ...    *cap eng. Expertise center*
    ...
    Wait Until Page Contains Element    ${locator}
    Input Text    ${locator}    ${text}

Write Password
    [Arguments]    ${locator}    ${password}
    [Documentation]    Waits for an element identified by "locator" and the "user_password" on it.
    ...
    ...    *Input Arguments:*
    ...    | *Name*    | *Description* |
    ...    | locator   | xpath of the element to write in |
    ...    | user      | insert password |
    ...
    ...    *cap eng. Expertise center*
    ...
    Wait Until Page Contains Element    ${locator}
    Input Text    ${locator}    ${password}

Take Screenshots Browser
    [Documentation]    Setup for taking Browser screenshots
    ...
    ...    *cap eng. Expertise center*
    ...
    Run Keyword and Ignore Error    SeleniumLibrary.CapturePageScreenshot
