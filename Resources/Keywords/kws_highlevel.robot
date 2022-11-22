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
#VALIDATIONS KEYWORDS

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
