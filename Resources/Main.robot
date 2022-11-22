*** Settings ***
# LIBRARYS
Library  String
Library  BuiltIn
Library  DateTime
Library  Screenshot
Library  Collections
Library  SeleniumLibrary
Library  OperatingSystem
Library  FakerLibrary  locale=en_US

# CONFIG HELPER PROJECT ROOT WAY
Variables  ${ROOT}/Resources/config_helper.py

# INSTANCE HERE ALL FILES FROM FOLDER DATA/VARIABLES
Resource  ${ROOT}/Data/Variables/CommonVariables.robot

# INSTANCE HERE ALL FILES FROM FOLDER DATA/MEDIA

# INSTANCE HERE ALL FILES FROM FOLDER RESOURCES/CONTROLLERS
Resource  ${ROOT}/Resources/Controllers/kws_auxiliary.robot
Resource  ${ROOT}/Resources/Controllers/kws_highlevel.robot
Resource  ${ROOT}/Resources/Controllers/kws_lowlevel.robot

# INSTANCE HERE ALL FILES FROM FOLDER RESOURCES/PAGEOBJECTS
Resource  ${ROOT}Resources/PageObjects/Home.robot
Resource  ${ROOT}Resources/PageObjects/CommonElements.robot
Resource  ${ROOT}Resources/PageObjects/RegisterUser.robot
Resource  ${ROOT}Resources/PageObjects/Search.robot