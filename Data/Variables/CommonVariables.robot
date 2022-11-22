*** Settings ***
Documentation  Common variables for all the project
Resource  ${ROOT}/Resources/Main.robot

*** Variables ***
${URL_Base}  http://www.google.com
${BROWSER}  Chrome
${OPTION_LOG}  add_experimental_option('excludeSwitches',['enable-logging']); add_argument("--disable-dev-shm-usage"); add_argument("--Hadless"); add_argument("--no-sandbox"); add_argument("--windows-size=1366,768"); add_argument("--disable-notification")

&{User_01}
...  login=test01@test.com
...  pass=123456
...  name=TestLogin01

&{User_02}
...  login=test02@test.com
...  pass=123456
...  name=TestLogin02
