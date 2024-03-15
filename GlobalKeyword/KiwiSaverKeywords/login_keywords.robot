## ------------------------------------------------------------------------------------------------------------------
## Summary - Login keywords used in kiwi saver scheme calculator
## File - login_keywords.robot
## Creator - Shubhankar Bhardwaj
## Usage - Login and logout or launch URL
## ------------------------------------------------------------------------------------------------------------------

*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/../CommonKeywords/selenium_keywords.robot


*** Keywords ***

Launch URL
    [Documentation]    This keyword is used for launching browser, visit the argument URL 
    [Arguments]    ${url}    ${browser}    ${driver_path}
    ${verify_url}    Run Keyword And Return Status    Open Browser    ${url}    ${browser}    executable_path=${driver_path}
    IF    '${verify_url}' == 'True'
        Log    URL launched successfully
        Maximize Browser Window
        Sleep3s
    ELSE
        Log    URL launch unsuccessful
        Fail    URL launch unsuccessful, exiting!
    END

Close Browser Window
    Log    Closing all browsers
    Close All Browsers
    