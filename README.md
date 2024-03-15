# Westpac kiwisaver calculator automation

This is python, selenium and robot framework based automation.

## Setup the environment to run the project

1. Environment pre-requisite 
    - OS: Windows
    - Python version: 3.8 & above
    - Edge browser
    - Install edge driver from - https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/?form=MA13LH#downloads
   
2. Install the dependencies of the framework directly into your local environment:
    - install pycharm
    - install git bash
    - Open git bash and run below command to take clone or download zip file
    - Activate the virtual environment in the pycharm terminal `.\calvenv\Scripts\activate`
    - Install the python requirements: `pip install -r Requirements.txt`
    - Run the robot tests by using below command
        Ex - `robot -d .\Results\ --i=Scheme_Calculator .\Tests\Feature\kiwisaver_scheme_calculator.robot`

3. Framework structure
    - calvenv: This is the virtual environment which contains all the required libraries once installed.
    - Drivers: This folder contains microsoft edge driver.
    - GlobalKeyword: This folder contains two folders 
      - CommonKeywords: 
        - selenium_keywords.robot: Contains common keywords useful in automation.
      - KiwiSaverKeywords
        - kiwisaver_calculator_keywords.robot: This file contains keywords for steps performed to calculate savings
        - login_keywords.robot: This file contains launch and close of browser keywords.
    - KiwiSaverPOM: 
      - kiwisaver_calculator_locators.py: This python file contains webelement locators.
    - Results: This folder contains 3 files that are generated after execution of test.
    - Tests:
      - Feature: This folder contains main robot test file for kiwisaver calculator.
      - TestData: This folder contains variables used in saving calculations.
    - Variables: This folder contains variables.py which contains test environment variables.
    - Requirements.txt: This file contains required python libraries and their latest versions.
      