## ------------------------------------------------------------------------------------------------------------------
## Summary - This is a keywords file, in this file keywords for calculator operations are present.
## File - kiwisaver_calculator_keywords.py
## Creator - Shubhankar Bhardwaj
## Usage - Place common keywords having multiple steps which are common for calculator operations
## ------------------------------------------------------------------------------------------------------------------

*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/../CommonKeywords/selenium_keywords.robot

*** Keywords ***
Clear and input texts
    [Documentation]    Clear text fields and input values
    [Arguments]    ${input_locator}    ${input}
    Press Keys    ${input_locator}    CTRL+a+BACKSPACE
    Sleep1s
    Input Text    ${input_locator}    ${input}
    Sleep1s
    
Click next question
    [Documentation]    This keyword clicks next question button
    [Arguments]    ${button_locator}
    Click Element    ${button_locator}


Choose employment status
    [Documentation]    This keyword helps in selecting employment status from drop down list
    [Arguments]    ${status_locator}    ${status}
    Click Element    ${status_locator}
    Sleep1s
    Click Element    ${status}
    Sleep3s
    
Select income time frame and enter income
    [Documentation]    This keyword is to select income time frame and enter income
    [Arguments]    ${time_frame_locator}    ${user_selected_time_frame}    ${income_text_box_locator}    ${total_income}
    Click Element    ${time_frame_locator}
    Sleep1s
    Click Element    ${user_selected_time_frame}
    Sleep1s
    Clear And Input Texts    ${income_text_box_locator}    ${total_income}

Contribution percentage
    [Documentation]    This keyword selects the contribution 
    [Arguments]    ${contribution_drop_down_locator}    ${contribution_percentage_locator}
    Click Element    ${contribution_drop_down_locator}
    Sleep1s
    Click Element    ${contribution_percentage_locator}
    Sleep3s
    
Choose fund type
    [Documentation]    This keyword selects the fund type
    [Arguments]    ${fund_type_locator}    ${growth_fund_locator}
    Click Element    ${fund_type_locator}
    Sleep2s
    Click Element    ${growth_fund_locator}
    Sleep    10
    
Get current projection
    [Documentation]    This keyword gets the projection for all the selections made by user
    [Arguments]    ${projection_text_locator}
    ${projection_text}    Get Text    ${projection_text_locator}
    RETURN    ${projection_text}