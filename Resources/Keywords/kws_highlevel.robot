*** Settings ***
Documentation  Steps of tests
Resource  ${ROOT}/Resources/Main.robot

*** Variables ***

*** Keywords ***
############# OPEN/CLOSE BROWSERS #############
Open Application
    [Arguments]  ${URL_Base}  ${BROWSER}
    [Documentation]  Test setup to open browser
    Open Browser  ${URL_Base}  ${BROWSER}  options=${OPTION_LOG}

Close Application
    Close Browser

############# NAVIGATION #############
Navigate To "${page}"
    [Documentation]    Click on element identified by "dict_pages" and "page".
    ...
    ...    *Input Arguments:*
    ...    | *Name* | *Description* |
    ...    | dict_pages | name of the dictionary |
    ...    | page | key of dictionary to click |
    ...
    ...    *cap eng. Expertise center*
    ...
    Click    ${dict_pages}[${page}]

############# LOGIN AND LOGOUT #############
Login As "${user}"
    [Documentation]    Write an "user" element username and password keys and click on login.
    ...
    ...    *Input Arguments:*
    ...    | *Name* | *Description* |
    ...    | user | locator of the dictionary |
    ...    | email | key of dictionary to write |
    ...    | passw | key of dictionary to write |
    ...    | username_field | xpath of element to write    |
    ...    | password_field | xpath of element to write    |
    ...    | login_button | xpath of element to click |
    ...
    ...    *cap eng. Expertise center*
    ...
    Write    ${signin_email_field}    ${${user} ['email']}
    Write Password    ${signin_password_field}    ${${user} ['password']}
    Click    ${signin_login_button}

Logout
    [Documentation]    Click on element
    ...
    ...    *Input Arguments:*
    ...    | *Name* | *Description* |
    ...    | signout_button | xpath of the element to click |
    ...
    ...    *cap eng. Expertise center*
    ...
    Click    ${signout_button}

############# CHOOSEN AND SEARCH #############
Choose a "${locator}" of "${value}" items
    [Documentation]    Set and search an element identified by "locator" with "value"
    ...
    ...    *Input Arguments:*
    ...    | *Name*   | *Description* |
    ...    | locator  | xpath of the element where the search will be done |
    ...    | value    | Search text   |
    ...
    ...    *cap eng. Expertise center*
    ...
    ${locator}=    Set Variable    ${dict_search}[${locator}]
    Write    ${locator}    ${value}

Choose the "${locator}" for the item
    [Documentation]    Choose an element identified by "locator"
    ...
    ...    *Input Arguments:*
    ...    | *Name*  | *Description* |
    ...    | locator | xpath of the element where the search will be done |
    ...
    ...    *cap eng. Expertise center*
    ...
    ${locator}=    Set Variable    ${dict_search}[${locator}]
    Click    ${locator}
    Click    ${size_button}

Search for "${text}"
    [Documentation]    Search an element identified by "text"
    ...
    ...    *Input Arguments:*
    ...    | *Name*  | *Description* |
    ...    | text    | Search text   |
    ...
    ...    *cap eng. Expertise center*
    ...
    ${locator}=    Set Variable    ${dict_search}[${text}]
    Write    ${locator}    ${text}
    Click    ${search_button}

############# REGISTER #############
Registration form
    [Documentation]    Keyword for user registration
    Enter Email To "Email"
    Click on "Create an account"
    Click On "Mr"
    Enter Name To "Name"
    Enter Surname To "Surname"
    Click On "Options Days"
    Click On "Days"
    Click On "Options Months"
    Click On "Months"
    Click On "Options Years"
    Click On "Years"
    Enter Company To "Company"
    Enter Address To "Address"
    Enter City To "City"
    Click On "Options State"
    Click On "State"
    Enter Postal Code To "Postal Code"
    Enter Note To "Note"
    Enter Phone Number To "Phone Mobile"
    Enter Email To "Alias"
    Enter Password To "Password"

############# VALIDATIONS #############
Verify Name Of "${option}" Is Visible As "${value}"
    [Documentation]    Checks text and waits for an element identified by "option" and "value"
    ...
    ...    *Input Arguments:*
    ...    | *Name*  | *Description* |
    ...    | locator | xpath of the element to compare |
    ...    | option  | name of the dictionary |
    ...    | value   | key of dictionary to compare |
    ...
    ...    *cap eng. Expertise center*
    ...
    ${locator}=    Set Variable    ${dict_validations}[${option}]
    Wait Until Keyword Succeeds    5    5s    Element Text Should Be    ${locator}    ${${value} ['name']}

Verify if contain "${text}"
    [Documentation]    Checks partial for an element identified by "text"
    ...
    ...    *Input Arguments:*
    ...    | *Name*  | *Description*     |
    ...    | text    | Text for checking |
    ...
    ...    *cap eng. Expertise center*
    ...
    ${locator}=    Set Variable    ${dict_validations}[${text}]
    Wait Until Keyword Succeeds    4    5s    Element Should Contain    ${locator}    ${text}

Verify if page contain "${locator}" visible
    [Documentation]    Searches if the element is being displayed on the page by "locator"
    ...
    ...    *Input Arguments:*
    ...    | *Name*    | *Description* |
    ...    | locator   | xpath of the element to check |
    ...
    ...    *cap eng. Expertise center*
    ...
    Wait Until Element Is Visible    ${dict_validations}[${locator}]

############# CLICKS #############
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

Click On "${locator}"
    [Documentation]    Click on element identified by "locator".
    ...
    ...    *Input Arguments:*
    ...    | *Name* | *Description* |
    ...    | locator | xpath of the element to click |
    ...
    ...    *cap eng. Expertise center*
    ...
    Click    ${dict_click}[${locator}]

############# WRITES #############
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

############# SCREENSHOT #############
Take Screenshots Browser
    [Documentation]    Setup for taking Browser screenshots
    ...
    ...    *cap eng. Expertise center*
    ...
    Run Keyword and Ignore Error    SeleniumLibrary.CapturePageScreenshot

Define directory to save evidances
    [Documentation]  Extarct tag of test, create the directory with
    ...              where the name are the tag and define this directory to save the screenshots
    FOR  ${tag}  IN  @{TEST TAGS}
        ${isTC}  Run Keyword And Return Status  Should Contain  ${tag}  TC
        IF  ${isTC} == True
            ${TEST_ID}  Set Variable  ${tag}
            Exit For Loop
        END
    END
    ${EVIDENCE_PATH}  Set Variable  ${ROOT}\\Results\\${CURRENT_TIME}\\screenshots\\${TEST_ID}
    Create Directory  ${EVIDENCE_PATH}
    Set Test Variable  ${EVIDENCE_PATH}
    Log To Console  EVIDANCES PATH: ${EVIDENCE_PATH}

Take Screenshot
    [Documentation]  Capture the screenshot in .png, rename with current time
    ...              and save in the directory was created on keyword Define directory to save evidances
    ${SCREENSHOT_NAME}  Get Current Date  result_format=%d%m%y_%H%M%S
    Run Keyword and Ignore Error  Capture Page Screenshot  ${EVIDENCE_PATH}\\${SCREENSHOT_NAME}.png