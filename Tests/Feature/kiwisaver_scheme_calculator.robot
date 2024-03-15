*** Settings ***
Suite Setup    Launch URL    ${kiwisaver_cal_url}    ${browser}    ${driver_path}
Suite Teardown    Close Browser Window

Library     SeleniumLibrary
Resource    ${CURDIR}/../../GlobalKeyword/KiwiSaverKeywords/login_keywords.robot
Resource    ${CURDIR}/../../GlobalKeyword/CommonKeywords/selenium_keywords.robot
Resource    ${CURDIR}/../../GlobalKeyword/KiwiSaverKeywords/kiwisaver_calculator_keywords.robot
Variables    ${CURDIR}/../../Variables/variables.py
Variables    ${CURDIR}/../../KiwiSaverPOM/kiwisaver_calculator_locators.py
Variables    ${CURDIR}/../TestData/kiwisaver_calculator_variables.py

*** Test Cases ***
Calculate kiwisaver scheme projection
    [Documentation]    This test case calculates the kiwi saver scheme projections based on the inputs
    [Tags]    Scheme_Calculator

    # Get the current title of the page and matches it with actual page title 
    ${actual_page_title}    Get Title    
    IF  '${actual_page_title}' == 'KiwiSaver Calculator - Westpac NZ'
        Log    Page Title matches
    ELSE
        Log    Page title doesn't matches, exiting test case!
        Fail    Page title doesn't matches, exiting test case!
    END

    # Scroll down to the open the calculator button and click it
    Scroll Element Into View    ${open_calculator_button_locator}
    Sleep3s
    Click Element    ${open_calculator_button_locator}
    Sleep3s

    # 1. Clear text field, enter text value and click next question button
    Clear and input texts    ${age_input_locator}    ${age}
    Sleep3s
    Click next question    ${after_age_next_question_locator}
    Sleep3s

    # 2. Select retirement plan
    Click Element    ${retirement_plan_locator}
    Sleep3s

    # 3. Select employment EMPLOYED status drop down
    Choose employment status    ${employment_status_locator}    ${employed_status_locator}
    Sleep2s

    # 4. Select income duration = per year and enter income in text field
    Select income time frame and enter income    ${income_time_frame_locator}    ${income_per_year_locator}    ${income_text_box_locator}    ${total_income}
    Sleep2s
    Click next question    ${after_income_next_question_locator}

    # 5. Enter kiwisaver balance
    Clear and input texts    ${kiwisaver_balance_text_box_locator}    ${kiwisaver_balance}
    Sleep2s
    Click next question    ${after_kiwisaver_next_question_locator}

    # Select contribution percentage
    Contribution percentage    ${contribution_percentage_drop_down_locator}    ${contribution_percentage_locator}
    Sleep3s

    # Select fund type
    Choose fund type    ${fund_type_locator}    ${growth_fund_locator}
    Sleep3s

    # Get the projection
    ${projection_text}    Get current projection    ${projection_text_locator}
    Log    ${projection_text}