*** Settings ***
Documentation  Keywords to construct steps
Resource  ${ROOT}/Resources/Main.robot

*** Keywords ***
############# FAKE LIBRARY #############
Enter Email To "${value}"
    [Documentation]    Click on element identified by "dict_register" and "value".
    ...    Generate random and faker data for the test
    ...
    ...    *Input Arguments:*
    ...    | *Name*    | *Description* |
    ...    | value    | key of dictionary to click |
    ...
    ...    *cap eng. Expertise center*
    ...
    ${email}    FakerLibrary.Free Email
    Set Test Variable    ${email}
    ${locator}=    Set Variable    ${dict_register}[${value}]
    Set Test Variable    ${locator}
    Write    ${locator}    ${email}

Enter Password To "${value}"
    [Documentation]    Click on element identified by "dict_register" and "value".
    ...    Generate random and faker data for the test
    ...
    ...    *Input Arguments:*
    ...    | *Name*    | *Description* |
    ...    | value    | key of dictionary to click |
    ...
    ...    *cap eng. Expertise center*
    ...
    ${password}    FakerLibrary.Random Number    digits=9
    Set Test Variable    ${password}
    ${locator}=    Set Variable    ${dict_register}[${value}]
    Set Test Variable    ${locator}
    Write    ${locator}    ${password}

Enter Name To "${value}"
    [Documentation]    Click on element identified by "dict_register" and "value".
    ...    Generate random and faker data for the test
    ...
    ...    *Input Arguments:*
    ...    | *Name*    | *Description* |
    ...    | value    | key of dictionary to click |
    ...
    ...    *cap eng. Expertise center*
    ...
    ${first_name}    FakerLibrary.FirstName
    Set Test Variable    ${first_name}
    ${locator}=    Set Variable    ${dict_register}[${value}]
    Set Test Variable    ${locator}
    Write    ${locator}    ${first_name}

Enter Surname To "${value}"
    [Documentation]    Click on element identified by "dict_register" and "value".
    ...    Generate random and faker data for the test
    ...
    ...    *Input Arguments:*
    ...    | *Name*    | *Description* |
    ...    | value    | key of dictionary to click |
    ...
    ...    *cap eng. Expertise center*
    ...
    ${last_name}    FakerLibrary.Last Name
    Set Test Variable    ${last_name}
    ${locator}=    Set Variable    ${dict_register}[${value}]
    Set Test Variable    ${locator}
    Write    ${locator}    ${last_name}

Enter Address To "${value}"
    [Documentation]    Click on element identified by "dict_register" and "value".
    ...    Generate random and faker data for the test
    ...
    ...    *Input Arguments:*
    ...    | *Name*    | *Description* |
    ...    | value    | key of dictionary to click |
    ...
    ...    *cap eng. Expertise center*
    ...
    ${address}    FakerLibrary.Address
    Set Test Variable    ${address}
    ${locator}=    Set Variable    ${dict_register}[${value}]
    Write    ${locator}    ${address}

Enter Company To "${value}"
    [Documentation]    Click on element identified by "dict_register" and "value".
    ...    Generate random and faker data for the test
    ...
    ...    *Input Arguments:*
    ...    | *Name*    | *Description* |
    ...    | value    | key of dictionary to click |
    ...
    ...    *cap eng. Expertise center*
    ...
    ${company}    FakerLibrary.Company
    Set Test Variable    ${company}
    ${locator}=    Set Variable    ${dict_register}[${value}]
    Write    ${locator}    ${company}

Enter City To "${value}"
    [Documentation]    Click on element identified by "dict_register" and "value".
    ...    Generate random and faker data for the test
    ...
    ...    *Input Arguments:*
    ...    | *Name*    | *Description* |
    ...    | value    | key of dictionary to click |
    ...
    ...    *cap eng. Expertise center*
    ...
    ${city}    FakerLibrary.City
    Set Test Variable    ${city}
    ${locator}=    Set Variable    ${dict_register}[${value}]
    Write    ${locator}    ${city}

Enter Note To "${value}"
    [Documentation]    Click on element identified by "dict_register" and "value".
    ...    Generate random and faker data for the test
    ...
    ...    *Input Arguments:*
    ...    | *Name*    | *Description* |
    ...    | value    | key of dictionary to click |
    ...
    ...    *cap eng. Expertise center*
    ...
    ${note}    FakerLibrary.Paragraph
    Set Test Variable    ${note}
    ${locator}=    Set Variable    ${dict_register}[${value}]
    Write    ${locator}    ${note}

Enter Postal Code To "${code}"
    [Documentation]    Click on element identified by "dict_register" and "value".
    ...    Generate random and faker data for the test
    ...
    ...    *Input Arguments:*
    ...    | *Name*    | *Description* |
    ...    | value    | key of dictionary to click |
    ...
    ...    *cap eng. Expertise center*
    ...
    ${postal}    FakerLibrary.Postcode
    Set Test Variable    ${postal}
    ${locator}=    Set Variable    ${dict_register}[${code}]
    Write    ${locator}    ${postal}

Enter Phone Number To "${value}"
    [Documentation]    Click on element identified by "dict_register" and "value".
    ...    Generate random and faker data for the test
    ...
    ...    *Input Arguments:*
    ...    | *Name*    | *Description* |
    ...    | value    | key of dictionary to click |
    ...
    ...    *cap eng. Expertise center*
    ...
    ${phone}    FakerLibrary.Msisdn
    Set Test Variable    ${phone}
    ${locator}=    Set Variable    ${dict_register}[${value}]
    Write    ${locator}    ${phone}
