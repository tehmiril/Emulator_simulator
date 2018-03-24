*** Settings ***
Library           AppiumLibrary
Library           String
Library           Collections
Resource          Test_data_calculator.txt
Resource          Custom_calc_keywords.txt

*** Test Cases ***
Test basic calc app
    [Documentation]    Basic function
    [Setup]    Open Calc app
    Log    "STEP 1, enter values"
    Calc activity    ${digit7}    ${digit5}    ${sign1}
    Log    "STEP 2, view result"
    Get Result
    Log    "STEP 3, let's verify"
    Verify Result    ${expectedResult}
    [Teardown]    Close Application
