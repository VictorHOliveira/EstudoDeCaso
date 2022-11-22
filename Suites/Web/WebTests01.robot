*** Settings ***
Resource  ${ROOT}/Resources/Main.robot
Suite Setup  Open Application
Suite Teardown  Close Application

*** Test Cases ***
TC-001: Test Web
    